/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: directives_ordering,unnecessary_import,implicit_dynamic_list_literal

import 'package:flutter/widgets.dart';

class $AssetsDesignGen {
  const $AssetsDesignGen();

  /// File path: assets/design/interfaces1.png
  AssetGenImage get interfaces1 =>
      const AssetGenImage('assets/design/interfaces1.png');

  /// File path: assets/design/interfaces2.png
  AssetGenImage get interfaces2 =>
      const AssetGenImage('assets/design/interfaces2.png');

  /// File path: assets/design/interfaces3.png
  AssetGenImage get interfaces3 =>
      const AssetGenImage('assets/design/interfaces3.png');

  /// File path: assets/design/interfaces4.png
  AssetGenImage get interfaces4 =>
      const AssetGenImage('assets/design/interfaces4.png');

  /// File path: assets/design/interfaces5.png
  AssetGenImage get interfaces5 =>
      const AssetGenImage('assets/design/interfaces5.png');

  /// File path: assets/design/interfaces6.png
  AssetGenImage get interfaces6 =>
      const AssetGenImage('assets/design/interfaces6.png');

  /// List of all assets
  List<AssetGenImage> get values => [
        interfaces1,
        interfaces2,
        interfaces3,
        interfaces4,
        interfaces5,
        interfaces6
      ];
}

class $AssetsImagesGen {
  const $AssetsImagesGen();

  /// File path: assets/images/box-account-init.png
  AssetGenImage get boxAccountInit =>
      const AssetGenImage('assets/images/box-account-init.png');

  /// File path: assets/images/box-egg.png
  AssetGenImage get boxEgg => const AssetGenImage('assets/images/box-egg.png');

  /// File path: assets/images/box-logo-name.png
  AssetGenImage get boxLogoName =>
      const AssetGenImage('assets/images/box-logo-name.png');

  /// File path: assets/images/box-logo.png
  AssetGenImage get boxLogo =>
      const AssetGenImage('assets/images/box-logo.png');

  /// File path: assets/images/cadenas.png
  AssetGenImage get cadenas => const AssetGenImage('assets/images/cadenas.png');

  /// File path: assets/images/circular.png
  AssetGenImage get circular =>
      const AssetGenImage('assets/images/circular.png');

  /// File path: assets/images/demarrer-epargne.png
  AssetGenImage get demarrerEpargne =>
      const AssetGenImage('assets/images/demarrer-epargne.png');

  /// File path: assets/images/ellipse 2.png
  AssetGenImage get ellipse2 =>
      const AssetGenImage('assets/images/ellipse 2.png');

  /// File path: assets/images/epargne-secu.png
  AssetGenImage get epargneSecu =>
      const AssetGenImage('assets/images/epargne-secu.png');

  /// File path: assets/images/icon_horloge.png
  AssetGenImage get iconHorloge =>
      const AssetGenImage('assets/images/icon_horloge.png');

  /// File path: assets/images/oeuf.png
  AssetGenImage get oeuf => const AssetGenImage('assets/images/oeuf.png');

  /// File path: assets/images/planifier-epargne.png
  AssetGenImage get planifierEpargne =>
      const AssetGenImage('assets/images/planifier-epargne.png');

  /// File path: assets/images/recup-epargne.png
  AssetGenImage get recupEpargne =>
      const AssetGenImage('assets/images/recup-epargne.png');

  /// File path: assets/images/transac.png
  AssetGenImage get transac => const AssetGenImage('assets/images/transac.png');

  /// File path: assets/images/zen-box.png
  AssetGenImage get zenBox => const AssetGenImage('assets/images/zen-box.png');

  /// List of all assets
  List<AssetGenImage> get values => [
        boxAccountInit,
        boxEgg,
        boxLogoName,
        boxLogo,
        cadenas,
        circular,
        demarrerEpargne,
        ellipse2,
        epargneSecu,
        iconHorloge,
        oeuf,
        planifierEpargne,
        recupEpargne,
        transac,
        zenBox
      ];
}

class Assets {
  Assets._();

  static const $AssetsDesignGen design = $AssetsDesignGen();
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
