enum Flavor {
  PROD,
  DEV,
}

class F {
  static Flavor? appFlavor;

  static String get name => appFlavor?.name ?? '';

  static String get title {
    switch (appFlavor) {
      case Flavor.PROD:
        return 'Prod App';
      case Flavor.DEV:
        return 'Dev App';
      default:
        return 'title';
    }
  }

}
