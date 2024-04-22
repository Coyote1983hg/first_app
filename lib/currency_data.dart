

class CurrencyData {
  static final List<String> currencies = [
    'USD',
    'EUR',
    'GBP',
    'JPY',
    'AUD',
    'CAD',
    'CHF',
    'CNY',
    'HKD',
    'NZD',
  ];

  static double convert(double amount, String fromCurrency, String toCurrency) {
    // Implement your currency conversion logic here
    // This is a placeholder implementation
    final exchangeRates = {
      'USD': 1.0,
      'EUR': 0.85,
      'GBP': 0.72,
      'JPY': 110.15,
      'AUD': 1.31,
      'CAD': 1.25,
      'CHF': 0.92,
      'CNY': 6.47,
      'HKD': 7.76,
      'NZD': 1.39,
    };

    final fromRate = exchangeRates[fromCurrency] ?? 1.0;
    final toRate = exchangeRates[toCurrency] ?? 1.0;
    return (amount / fromRate) * toRate;
  }
}
