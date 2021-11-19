import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_binario_decimal/ui/app.dart';

import 'domain/models/convertion_model.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => ConvertionModel(),
      child: const App()
    ),
  );
}
