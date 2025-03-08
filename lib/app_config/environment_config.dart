enum Flavor {
  dev,
  prod,
}

class Environment {
  static Flavor appFlavor = Flavor.dev;

  static String get name => appFlavor.name;

  static String get title {
    switch (appFlavor) {
      case Flavor.dev:
        return 'Testing Dev';
      case Flavor.prod:
        return 'Testing';
    }
  }

  static String get baseUrl {
    switch (appFlavor) {
      case Flavor.dev:
        return 'Testing Dev';
      case Flavor.prod:
        return 'Testing';
    }
  }
}