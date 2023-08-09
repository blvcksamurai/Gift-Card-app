import 'package:flutter/material.dart';
import 'package:gift_card_app/gen/colors.gen.dart';
import 'package:gift_card_app/models/card_model.dart';
import 'package:gift_card_app/providers/filtered_cards_provider.dart';
import 'package:gift_card_app/repositories/card_repository.dart';
import 'package:gift_card_app/utilities/card_category_extension.dart';
import 'package:gift_card_app/widgets/custom_bottom_nav_bar.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../widgets/app_text.dart';
import '../widgets/custom_chip.dart';
import '../widgets/custom_gift_card.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          elevation: 0.0,
          backgroundColor: Colors.transparent,
          title: Padding(
            padding: const EdgeInsets.only(left: 10.0),
            child: AppText.title(
              "Get Griddy",
            ),
          )),
      bottomNavigationBar: CustomNavBar(index: 0),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          children: [
            const SizedBox(height: 10),
            _SearchBar(),
            const SizedBox(height: 10),
            _CategoryFilter(),
            const SizedBox(height: 10),
            _CardGrid(),
          ],
        ),
      ),
    );
  }
}

class _SearchBar extends StatelessWidget {
  const _SearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Flexible(
        child: TextFormField(
      decoration: InputDecoration(
        filled: true,
        fillColor: ColorName.lightGrey,
        hintText: 'Search Card',
        prefixIcon: const Icon(Icons.search),
        border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20),
            borderSide: BorderSide.none),
      ),
      onChanged: (value) {},
    ));
  }
}

class _CategoryFilter extends StatelessWidget {
  const _CategoryFilter({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 30,
      child: ListView(
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        children: [
          ...CardCategory.values.map((category) => CustomChip(
                label: category.capitalName(),
              ))
        ],
      ),
    );
  }
}

class _CardGrid extends ConsumerWidget {
  const _CardGrid({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final size = MediaQuery.of(context).size;
    final cards = ref.watch(filteredCardsProvider);

    return cards.when(
        loading: () => Center(
              child: CircularProgressIndicator(),
            ),
        data: (cards) =>

            // final CardRepository cardRepository = ref.watch(cardRepositoryProvider);
            // var allCards = cardRepository.getAllCards();

            SizedBox(
              height: size.height * 0.65,
              child: GridView.builder(
                shrinkWrap: true,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: 10.0,
                  childAspectRatio: 0.75,
                ),
                itemCount: cards.length,
                itemBuilder: (context, index) {
                  return Center(
                    child: CustomGiftCard(
                      card: cards[index],
                      width: size.width * 0.425,
                    ),
                  );
                },
              ),
            ),
        error: (error, stackTrace) => Center(
              child: AppText.medium("Failed to fetch card"),
            ));
  }
}
