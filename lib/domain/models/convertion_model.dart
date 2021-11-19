import 'package:flutter/foundation.dart';
import '../use_case/converter.dart';

class ConvertionModel extends ChangeNotifier {
  // Variables privadas
  String _decimal = "0";
  String _binary = "0";

  // Get de variable privada
  String get decimal => _decimal;
  // Get de variable privada
  String get binary => _binary;

  void reset() {
    _decimal = "0";
    _binary = "0";
    notifyListeners();
  }

  void updateBinary(int digit) {
    if (int.parse(_decimal) <= 999999999) {
      _binary = Converter.adjustValue(_binary, digit);
      _decimal = Converter.binaryToDecimal(_binary);
      notifyListeners();
    }
  }

  void updateDecimal(int digit) {
    if (int.parse(_decimal) <= 999999999) {
      _decimal = Converter.adjustValue(_decimal, digit);
      _binary = Converter.decimalToBinary(_decimal);
      notifyListeners();
    }
  }
}
