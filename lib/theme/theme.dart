import "package:flutter/material.dart";

class MaterialTheme {
  final TextTheme textTheme;

  const MaterialTheme(this.textTheme);

  static ColorScheme lightScheme() {
    return const ColorScheme(
      brightness: Brightness.light,
      primary: Color(4282212240),
      surfaceTint: Color(4282212240),
      onPrimary: Color(4294967295),
      primaryContainer: Color(4292207615),
      onPrimaryContainer: Color(4278197307),
      secondary: Color(4278216820),
      onSecondary: Color(4294967295),
      secondaryContainer: Color(4288606205),
      onSecondaryContainer: Color(4278198052),
      tertiary: Color(4285421174),
      onTertiary: Color(4294967295),
      tertiaryContainer: Color(4294498558),
      onTertiaryContainer: Color(4280750895),
      error: Color(4290386458),
      onError: Color(4294967295),
      errorContainer: Color(4294957782),
      onErrorContainer: Color(4282449922),
      surface: Color(4294572543),
      onSurface: Color(4279835680),
      onSurfaceVariant: Color(4282599246),
      outline: Color(4285822847),
      outlineVariant: Color(4291086031),
      shadow: Color(4278190080),
      scrim: Color(4278190080),
      inverseSurface: Color(4281217077),
      inversePrimary: Color(4289186047),
      primaryFixed: Color(4292207615),
      onPrimaryFixed: Color(4278197307),
      primaryFixedDim: Color(4289186047),
      onPrimaryFixedVariant: Color(4280502135),
      secondaryFixed: Color(4288606205),
      onSecondaryFixed: Color(4278198052),
      secondaryFixedDim: Color(4286764001),
      onSecondaryFixedVariant: Color(4278210392),
      tertiaryFixed: Color(4294498558),
      onTertiaryFixed: Color(4280750895),
      tertiaryFixedDim: Color(4292591074),
      onTertiaryFixedVariant: Color(4283776861),
      surfaceDim: Color(4292467424),
      surfaceBright: Color(4294572543),
      surfaceContainerLowest: Color(4294967295),
      surfaceContainerLow: Color(4294177786),
      surfaceContainer: Color(4293783028),
      surfaceContainerHigh: Color(4293388526),
      surfaceContainerHighest: Color(4292993769),
    );
  }

  ThemeData light() {
    return theme(lightScheme());
  }

  static ColorScheme lightMediumContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.light,
      primary: Color(4280238962),
      surfaceTint: Color(4282212240),
      onPrimary: Color(4294967295),
      primaryContainer: Color(4283725480),
      onPrimaryContainer: Color(4294967295),
      secondary: Color(4278209107),
      onSecondary: Color(4294967295),
      secondaryContainer: Color(4280647564),
      onSecondaryContainer: Color(4294967295),
      tertiary: Color(4283513689),
      onTertiary: Color(4294967295),
      tertiaryContainer: Color(4286934157),
      onTertiaryContainer: Color(4294967295),
      error: Color(4287365129),
      onError: Color(4294967295),
      errorContainer: Color(4292490286),
      onErrorContainer: Color(4294967295),
      surface: Color(4294572543),
      onSurface: Color(4279835680),
      onSurfaceVariant: Color(4282336074),
      outline: Color(4284243815),
      outlineVariant: Color(4286020483),
      shadow: Color(4278190080),
      scrim: Color(4278190080),
      inverseSurface: Color(4281217077),
      inversePrimary: Color(4289186047),
      primaryFixed: Color(4283725480),
      onPrimaryFixed: Color(4294967295),
      primaryFixedDim: Color(4282080653),
      onPrimaryFixedVariant: Color(4294967295),
      secondaryFixed: Color(4280647564),
      onSecondaryFixed: Color(4294967295),
      secondaryFixedDim: Color(4278216305),
      onSecondaryFixedVariant: Color(4294967295),
      tertiaryFixed: Color(4286934157),
      onTertiaryFixed: Color(4294967295),
      tertiaryFixedDim: Color(4285289331),
      onTertiaryFixedVariant: Color(4294967295),
      surfaceDim: Color(4292467424),
      surfaceBright: Color(4294572543),
      surfaceContainerLowest: Color(4294967295),
      surfaceContainerLow: Color(4294177786),
      surfaceContainer: Color(4293783028),
      surfaceContainerHigh: Color(4293388526),
      surfaceContainerHighest: Color(4292993769),
    );
  }

  ThemeData lightMediumContrast() {
    return theme(lightMediumContrastScheme());
  }

  static ColorScheme lightHighContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.light,
      primary: Color(4278198855),
      surfaceTint: Color(4282212240),
      onPrimary: Color(4294967295),
      primaryContainer: Color(4280238962),
      onPrimaryContainer: Color(4294967295),
      secondary: Color(4278200108),
      onSecondary: Color(4294967295),
      secondaryContainer: Color(4278209107),
      onSecondaryContainer: Color(4294967295),
      tertiary: Color(4281211446),
      onTertiary: Color(4294967295),
      tertiaryContainer: Color(4283513689),
      onTertiaryContainer: Color(4294967295),
      error: Color(4283301890),
      onError: Color(4294967295),
      errorContainer: Color(4287365129),
      onErrorContainer: Color(4294967295),
      surface: Color(4294572543),
      onSurface: Color(4278190080),
      onSurfaceVariant: Color(4280296491),
      outline: Color(4282336074),
      outlineVariant: Color(4282336074),
      shadow: Color(4278190080),
      scrim: Color(4278190080),
      inverseSurface: Color(4281217077),
      inversePrimary: Color(4293192959),
      primaryFixed: Color(4280238962),
      onPrimaryFixed: Color(4294967295),
      primaryFixedDim: Color(4278201689),
      onPrimaryFixedVariant: Color(4294967295),
      secondaryFixed: Color(4278209107),
      onSecondaryFixed: Color(4294967295),
      secondaryFixedDim: Color(4278202937),
      onSecondaryFixedVariant: Color(4294967295),
      tertiaryFixed: Color(4283513689),
      onTertiaryFixed: Color(4294967295),
      tertiaryFixedDim: Color(4282000706),
      onTertiaryFixedVariant: Color(4294967295),
      surfaceDim: Color(4292467424),
      surfaceBright: Color(4294572543),
      surfaceContainerLowest: Color(4294967295),
      surfaceContainerLow: Color(4294177786),
      surfaceContainer: Color(4293783028),
      surfaceContainerHigh: Color(4293388526),
      surfaceContainerHighest: Color(4292993769),
    );
  }

  ThemeData lightHighContrast() {
    return theme(lightHighContrastScheme());
  }

  static ColorScheme darkScheme() {
    return const ColorScheme(
      brightness: Brightness.dark,
      primary: Color(4289186047),
      surfaceTint: Color(4289186047),
      onPrimary: Color(4278399071),
      primaryContainer: Color(4280502135),
      onPrimaryContainer: Color(4292207615),
      secondary: Color(4286764001),
      onSecondary: Color(4278203965),
      secondaryContainer: Color(4278210392),
      onSecondaryContainer: Color(4288606205),
      tertiary: Color(4292591074),
      onTertiary: Color(4282263621),
      tertiaryContainer: Color(4283776861),
      onTertiaryContainer: Color(4294498558),
      error: Color(4294948011),
      onError: Color(4285071365),
      errorContainer: Color(4287823882),
      onErrorContainer: Color(4294957782),
      surface: Color(4279309080),
      onSurface: Color(4292993769),
      onSurfaceVariant: Color(4291086031),
      outline: Color(4287467929),
      outlineVariant: Color(4282599246),
      shadow: Color(4278190080),
      scrim: Color(4278190080),
      inverseSurface: Color(4292993769),
      inversePrimary: Color(4282212240),
      primaryFixed: Color(4292207615),
      onPrimaryFixed: Color(4278197307),
      primaryFixedDim: Color(4289186047),
      onPrimaryFixedVariant: Color(4280502135),
      secondaryFixed: Color(4288606205),
      onSecondaryFixed: Color(4278198052),
      secondaryFixedDim: Color(4286764001),
      onSecondaryFixedVariant: Color(4278210392),
      tertiaryFixed: Color(4294498558),
      onTertiaryFixed: Color(4280750895),
      tertiaryFixedDim: Color(4292591074),
      onTertiaryFixedVariant: Color(4283776861),
      surfaceDim: Color(4279309080),
      surfaceBright: Color(4281809214),
      surfaceContainerLowest: Color(4278980115),
      surfaceContainerLow: Color(4279835680),
      surfaceContainer: Color(4280098852),
      surfaceContainerHigh: Color(4280822319),
      surfaceContainerHighest: Color(4281480506),
    );
  }

  ThemeData dark() {
    return theme(darkScheme());
  }

  static ColorScheme darkMediumContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.dark,
      primary: Color(4289645823),
      surfaceTint: Color(4289186047),
      onPrimary: Color(4278195762),
      primaryContainer: Color(4285633222),
      onPrimaryContainer: Color(4278190080),
      secondary: Color(4287027173),
      onSecondary: Color(4278196766),
      secondaryContainer: Color(4283014313),
      onSecondaryContainer: Color(4278190080),
      tertiary: Color(4292854246),
      onTertiary: Color(4280421930),
      tertiaryContainer: Color(4288907178),
      onTertiaryContainer: Color(4278190080),
      error: Color(4294949553),
      onError: Color(4281794561),
      errorContainer: Color(4294923337),
      onErrorContainer: Color(4278190080),
      surface: Color(4279309080),
      onSurface: Color(4294703871),
      onSurfaceVariant: Color(4291349204),
      outline: Color(4288717739),
      outlineVariant: Color(4286612363),
      shadow: Color(4278190080),
      scrim: Color(4278190080),
      inverseSurface: Color(4292993769),
      inversePrimary: Color(4280633720),
      primaryFixed: Color(4292207615),
      onPrimaryFixed: Color(4278194473),
      primaryFixedDim: Color(4289186047),
      onPrimaryFixedVariant: Color(4279055973),
      secondaryFixed: Color(4288606205),
      onSecondaryFixed: Color(4278195223),
      secondaryFixedDim: Color(4286764001),
      onSecondaryFixedVariant: Color(4278205508),
      tertiaryFixed: Color(4294498558),
      onTertiaryFixed: Color(4280027428),
      tertiaryFixedDim: Color(4292591074),
      onTertiaryFixedVariant: Color(4282658380),
      surfaceDim: Color(4279309080),
      surfaceBright: Color(4281809214),
      surfaceContainerLowest: Color(4278980115),
      surfaceContainerLow: Color(4279835680),
      surfaceContainer: Color(4280098852),
      surfaceContainerHigh: Color(4280822319),
      surfaceContainerHighest: Color(4281480506),
    );
  }

  ThemeData darkMediumContrast() {
    return theme(darkMediumContrastScheme());
  }

  static ColorScheme darkHighContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.dark,
      primary: Color(4294703871),
      surfaceTint: Color(4289186047),
      onPrimary: Color(4278190080),
      primaryContainer: Color(4289645823),
      onPrimaryContainer: Color(4278190080),
      secondary: Color(4294049279),
      onSecondary: Color(4278190080),
      secondaryContainer: Color(4287027173),
      onSecondaryContainer: Color(4278190080),
      tertiary: Color(4294965754),
      onTertiary: Color(4278190080),
      tertiaryContainer: Color(4292854246),
      onTertiaryContainer: Color(4278190080),
      error: Color(4294965753),
      onError: Color(4278190080),
      errorContainer: Color(4294949553),
      onErrorContainer: Color(4278190080),
      surface: Color(4279309080),
      onSurface: Color(4294967295),
      onSurfaceVariant: Color(4294703871),
      outline: Color(4291349204),
      outlineVariant: Color(4291349204),
      shadow: Color(4278190080),
      scrim: Color(4278190080),
      inverseSurface: Color(4292993769),
      inversePrimary: Color(4278200917),
      primaryFixed: Color(4292667391),
      onPrimaryFixed: Color(4278190080),
      primaryFixedDim: Color(4289645823),
      onPrimaryFixedVariant: Color(4278195762),
      secondaryFixed: Color(4289458943),
      onSecondaryFixed: Color(4278190080),
      secondaryFixedDim: Color(4287027173),
      onSecondaryFixedVariant: Color(4278196766),
      tertiaryFixed: Color(4294631167),
      onTertiaryFixed: Color(4278190080),
      tertiaryFixedDim: Color(4292854246),
      onTertiaryFixedVariant: Color(4280421930),
      surfaceDim: Color(4279309080),
      surfaceBright: Color(4281809214),
      surfaceContainerLowest: Color(4278980115),
      surfaceContainerLow: Color(4279835680),
      surfaceContainer: Color(4280098852),
      surfaceContainerHigh: Color(4280822319),
      surfaceContainerHighest: Color(4281480506),
    );
  }

  ThemeData darkHighContrast() {
    return theme(darkHighContrastScheme());
  }


  ThemeData theme(ColorScheme colorScheme) => ThemeData(
     useMaterial3: true,
     brightness: colorScheme.brightness,
     colorScheme: colorScheme,
     textTheme: textTheme.apply(
       bodyColor: colorScheme.onSurface,
       displayColor: colorScheme.onSurface,
     ),
     scaffoldBackgroundColor: colorScheme.background,
     canvasColor: colorScheme.surface,
  );


  List<ExtendedColor> get extendedColors => [
  ];
}

class ExtendedColor {
  final Color seed, value;
  final ColorFamily light;
  final ColorFamily lightHighContrast;
  final ColorFamily lightMediumContrast;
  final ColorFamily dark;
  final ColorFamily darkHighContrast;
  final ColorFamily darkMediumContrast;

  const ExtendedColor({
    required this.seed,
    required this.value,
    required this.light,
    required this.lightHighContrast,
    required this.lightMediumContrast,
    required this.dark,
    required this.darkHighContrast,
    required this.darkMediumContrast,
  });
}

class ColorFamily {
  const ColorFamily({
    required this.color,
    required this.onColor,
    required this.colorContainer,
    required this.onColorContainer,
  });

  final Color color;
  final Color onColor;
  final Color colorContainer;
  final Color onColorContainer;
}
