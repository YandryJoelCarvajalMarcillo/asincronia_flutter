import 'dart:math';

class MockApi {
  /// Patrón Singleton utilizado aquí.
  static final MockApi _mockapi = MockApi._internal();

  factory MockApi() {
    return _mockapi;
  }

  MockApi._internal();

  ///
  /// Método privado para obtener un número entero entre 1 y 100 después de cierto retraso.
  ///
  Future<int> _getInteger(int delayInSeconds) {
    return Future.delayed(
      Duration(seconds: delayInSeconds),
      () => 1 + Random().nextInt(100),
    );
  }

  ///
  /// La API pública comienza aquí :)
  ///

  /// Obtiene un número entero aleatorio entre 1 y 100 muy rápido, porque usa un auto Ferrari :)
  Future<int> getFerrariInteger() {
    return _getInteger(1);
  }

  /// Obtiene un número entero aleatorio entre 1 y 100 no tan rápido, porque usa un automóvil indexes modesto.
  Future<int> getHyundaiInteger() {
    return _getInteger(3);
  }

  /// Obtiene un número entero aleatorio entre 1 y 100 muy lentamente, porque usa un carro de juguete de Fisher Price.
  Future<int> getFisherPriceInteger() {
    return _getInteger(10);
  }
}
