import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../models/card_model.dart';

part 'card_repository.g.dart';

//TODO: Create a provider with RiverPod generator to show the repository
@riverpod
CardRepository cardRepository(CardRepositoryRef ref) => CardRepository();

class CardRepository {
  Future<List<CardModel>> getAllCards() async {
    return Future.delayed(
      const Duration(milliseconds: 300),
      () {
        return CardModel.sampleCards;
      },
    );
  }

  Future<CardModel> getCard(int cardId) async {
    return Future.delayed(const Duration(milliseconds: 300), () {
      return CardModel.sampleCards.where((card) => card.id == cardId).first;
    });
  }
}
