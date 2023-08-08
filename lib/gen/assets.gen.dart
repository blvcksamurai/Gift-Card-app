/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: directives_ordering,unnecessary_import,implicit_dynamic_list_literal,deprecated_member_use

import 'package:flutter/widgets.dart';

class $AssetsCardsGen {
  const $AssetsCardsGen();

  /// File path: assets/cards/cake-bday.png
  AssetGenImage get cakeBday =>
      const AssetGenImage('assets/cards/cake-bday.png');

  /// File path: assets/cards/doge-xmas.png
  AssetGenImage get dogeXmas =>
      const AssetGenImage('assets/cards/doge-xmas.png');

  /// File path: assets/cards/flower.png
  AssetGenImage get flower => const AssetGenImage('assets/cards/flower.png');

  /// File path: assets/cards/gift-happy.png
  AssetGenImage get giftHappy =>
      const AssetGenImage('assets/cards/gift-happy.png');

  /// File path: assets/cards/gift-xmas.png
  AssetGenImage get giftXmas =>
      const AssetGenImage('assets/cards/gift-xmas.png');

  /// File path: assets/cards/happy-bday.png
  AssetGenImage get happyBday =>
      const AssetGenImage('assets/cards/happy-bday.png');

  /// File path: assets/cards/hohoho.png
  AssetGenImage get hohoho => const AssetGenImage('assets/cards/hohoho.png');

  /// File path: assets/cards/sock-xmas.png
  AssetGenImage get sockXmas =>
      const AssetGenImage('assets/cards/sock-xmas.png');

  /// List of all assets
  List<AssetGenImage> get values => [
        cakeBday,
        dogeXmas,
        flower,
        giftHappy,
        giftXmas,
        happyBday,
        hohoho,
        sockXmas
      ];
}

class $AssetsIconsGen {
  const $AssetsIconsGen();

  /// File path: assets/icons/arrowleft.svg
  String get arrowleft => 'assets/icons/arrowleft.svg';

  /// File path: assets/icons/arrowright.svg
  String get arrowright => 'assets/icons/arrowright.svg';

  /// File path: assets/icons/back.svg
  String get back => 'assets/icons/back.svg';

  /// File path: assets/icons/card.svg
  String get card => 'assets/icons/card.svg';

  /// File path: assets/icons/color.svg
  String get color => 'assets/icons/color.svg';

  /// File path: assets/icons/discover.svg
  String get discover => 'assets/icons/discover.svg';

  /// File path: assets/icons/gift-1.svg
  String get gift1 => 'assets/icons/gift-1.svg';

  /// File path: assets/icons/gift.svg
  String get gift => 'assets/icons/gift.svg';

  /// File path: assets/icons/home.svg
  String get home => 'assets/icons/home.svg';

  /// File path: assets/icons/mc.svg
  String get mc => 'assets/icons/mc.svg';

  /// File path: assets/icons/paypal.svg
  String get paypal => 'assets/icons/paypal.svg';

  /// File path: assets/icons/search.svg
  String get search => 'assets/icons/search.svg';

  /// List of all assets
  List<String> get values => [
        arrowleft,
        arrowright,
        back,
        card,
        color,
        discover,
        gift1,
        gift,
        home,
        mc,
        paypal,
        search
      ];
}

class Assets {
  Assets._();

  static const $AssetsCardsGen cards = $AssetsCardsGen();
  static const $AssetsIconsGen icons = $AssetsIconsGen();
}

class AssetGenImage {
  const AssetGenImage(this._assetName);

  final String _assetName;

  Image image({
    Key? key,
    AssetBundle? bundle,
    ImageFrameBuilder? frameBuilder,
    ImageErrorWidgetBuilder? errorBuilder,
    String? semanticLabel,
    bool excludeFromSemantics = false,
    double? scale,
    double? width,
    double? height,
    Color? color,
    Animation<double>? opacity,
    BlendMode? colorBlendMode,
    BoxFit? fit,
    AlignmentGeometry alignment = Alignment.center,
    ImageRepeat repeat = ImageRepeat.noRepeat,
    Rect? centerSlice,
    bool matchTextDirection = false,
    bool gaplessPlayback = false,
    bool isAntiAlias = false,
    String? package,
    FilterQuality filterQuality = FilterQuality.low,
    int? cacheWidth,
    int? cacheHeight,
  }) {
    return Image.asset(
      _assetName,
      key: key,
      bundle: bundle,
      frameBuilder: frameBuilder,
      errorBuilder: errorBuilder,
      semanticLabel: semanticLabel,
      excludeFromSemantics: excludeFromSemantics,
      scale: scale,
      width: width,
      height: height,
      color: color,
      opacity: opacity,
      colorBlendMode: colorBlendMode,
      fit: fit,
      alignment: alignment,
      repeat: repeat,
      centerSlice: centerSlice,
      matchTextDirection: matchTextDirection,
      gaplessPlayback: gaplessPlayback,
      isAntiAlias: isAntiAlias,
      package: package,
      filterQuality: filterQuality,
      cacheWidth: cacheWidth,
      cacheHeight: cacheHeight,
    );
  }

  ImageProvider provider({
    AssetBundle? bundle,
    String? package,
  }) {
    return AssetImage(
      _assetName,
      bundle: bundle,
      package: package,
    );
  }

  String get path => _assetName;

  String get keyName => _assetName;
}
