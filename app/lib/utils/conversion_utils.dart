class ConversionUtils {
  static double convertLength(double value, String from, String to) {
    // Base unit: meters
    double toMeters(double val, String unit) {
      switch (unit) {
        case 'cm':
          return val / 100;
        case 'm':
          return val;
        case 'km':
          return val * 1000;
        default:
          return val;
      }
    }

    double fromMeters(double val, String unit) {
      switch (unit) {
        case 'cm':
          return val * 100;
        case 'm':
          return val;
        case 'km':
          return val / 1000;
        default:
          return val;
      }
    }

    return fromMeters(toMeters(value, from), to);
  }

  static double convertWeight(double value, String from, String to) {
    // Base unit: kg
    double toKg(double val, String unit) {
      switch (unit) {
        case 'kg':
          return val;
        case 'lb':
          return val * 0.453592;
        case 'oz':
          return val * 0.0283495;
        default:
          return val;
      }
    }

    double fromKg(double val, String unit) {
      switch (unit) {
        case 'kg':
          return val;
        case 'lb':
          return val / 0.453592;
        case 'oz':
          return val / 0.0283495;
        default:
          return val;
      }
    }

    return fromKg(toKg(value, from), to);
  }

  static double convertSpeed(double value, String from, String to) {
    // Base unit: m/s
    double toMs(double val, String unit) {
      switch (unit) {
        case 'm/s':
          return val;
        case 'km/h':
          return val / 3.6;
        case 'mph':
          return val / 2.23694;
        default:
          return val;
      }
    }

    double fromMs(double val, String unit) {
      switch (unit) {
        case 'm/s':
          return val;
        case 'km/h':
          return val * 3.6;
        case 'mph':
          return val * 2.23694;
        default:
          return val;
      }
    }

    return fromMs(toMs(value, from), to);
  }

  static double convertTemperature(double value, String from, String to) {
    // Base unit: Celsius
    double toCelsius(double val, String unit) {
      switch (unit) {
        case '°C':
          return val;
        case '°F':
          return (val - 32) * 5 / 9;
        case 'K':
          return val - 273.15;
        default:
          return val;
      }
    }

    double fromCelsius(double val, String unit) {
      switch (unit) {
        case '°C':
          return val;
        case '°F':
          return (val * 9 / 5) + 32;
        case 'K':
          return val + 273.15;
        default:
          return val;
      }
    }

    return fromCelsius(toCelsius(value, from), to);
  }

  static double convertVolume(double value, String from, String to) {
    // Base unit: liters
    double toLiters(double val, String unit) {
      switch (unit) {
        case 'ml':
          return val / 1000;
        case 'l':
          return val;
        case 'gal':
          return val * 3.78541;
        default:
          return val;
      }
    }

    double fromLiters(double val, String unit) {
      switch (unit) {
        case 'ml':
          return val * 1000;
        case 'l':
          return val;
        case 'gal':
          return val / 3.78541;
        default:
          return val;
      }
    }

    return fromLiters(toLiters(value, from), to);
  }
}
