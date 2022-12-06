/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: directives_ordering,unnecessary_import,implicit_dynamic_list_literal

import 'package:flutter/widgets.dart';

class $AssetsImagesGen {
  const $AssetsImagesGen();

  /// File path: assets/images/a_propos.png
  AssetGenImage get aPropos =>
      const AssetGenImage('assets/images/a_propos.png');

  /// File path: assets/images/ajout_caisse.png
  AssetGenImage get ajoutCaisse =>
      const AssetGenImage('assets/images/ajout_caisse.png');

  /// File path: assets/images/annuler_caisse.png
  AssetGenImage get annulerCaisse =>
      const AssetGenImage('assets/images/annuler_caisse.png');

  /// File path: assets/images/cadeau.png
  AssetGenImage get cadeau => const AssetGenImage('assets/images/cadeau.png');

  /// File path: assets/images/cadenas.png
  AssetGenImage get cadenas => const AssetGenImage('assets/images/cadenas.png');

  /// File path: assets/images/commercial.png
  AssetGenImage get commercial =>
      const AssetGenImage('assets/images/commercial.png');

  /// File path: assets/images/contatc.png
  AssetGenImage get contatc => const AssetGenImage('assets/images/contatc.png');

  /// File path: assets/images/croix.png
  AssetGenImage get croix => const AssetGenImage('assets/images/croix.png');

  /// File path: assets/images/ellipse 2.png
  AssetGenImage get ellipse2 =>
      const AssetGenImage('assets/images/ellipse 2.png');

  /// File path: assets/images/icon_horloge.png
  AssetGenImage get iconHorloge =>
      const AssetGenImage('assets/images/icon_horloge.png');

  /// File path: assets/images/image_robinet.png
  AssetGenImage get imageRobinet =>
      const AssetGenImage('assets/images/image_robinet.png');

  /// File path: assets/images/oeuf.png
  AssetGenImage get oeuf => const AssetGenImage('assets/images/oeuf.png');

  /// File path: assets/images/partage.png
  AssetGenImage get partage => const AssetGenImage('assets/images/partage.png');

  /// List of all assets
  List<AssetGenImage> get values => [
        aPropos,
        ajoutCaisse,
        annulerCaisse,
        cadeau,
        cadenas,
        commercial,
        contatc,
        croix,
        ellipse2,
        iconHorloge,
        imageRobinet,
        oeuf,
        partage
      ];
}

class Assets {
  Assets._();

  static const $AssetsImagesGen images = $AssetsImagesGen();
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

  ImageProvider provider() => AssetImage(_assetName);

  String get path => _assetName;

  String get keyName => _assetName;
}
