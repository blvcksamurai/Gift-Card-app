import 'package:flutter/material.dart';
import 'package:gift_card_app/gen/colors.gen.dart';
import 'package:gift_card_app/gen/fonts.gen.dart';
import 'package:gift_card_app/models/card_model.dart';

import '../widgets/app_text.dart';

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
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          children: [
            const SizedBox(height: 10),
            _SearchBar(),
            const SizedBox(height: 10),
            _CategoryFilter(
              label: '',
            ),
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
  final String label;

  const _CategoryFilter({super.key, required this.label});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 30,
      child: ListView(
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        children: [
          ...CardCategory.values.map((category) => CustomChip(
                label: category.name,
              ))
        ],
      ),
    );
  }
}

class CustomChip extends StatelessWidget {
  final String label;
  bool isSelected;
  CustomChip({
    super.key,
    required this.label,
    this.isSelected = false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 10.0),
      padding: const EdgeInsets.symmetric(
        horizontal: 20.0,
        vertical: 5.0,
      ),
      decoration: BoxDecoration(
          color: isSelected ? ColorName.primaryColor : ColorName.disabledGrey,
          borderRadius: BorderRadius.circular(50.0)),
      child: Center(child: AppText.small(label)),
    );
  }
}
