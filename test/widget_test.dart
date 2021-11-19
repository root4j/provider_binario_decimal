// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility that Flutter provides. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:provider/provider.dart';
import 'package:provider_binario_decimal/domain/models/convertion_model.dart';

import 'package:provider_binario_decimal/ui/app.dart';

void main() {
  testWidgets('Encontre el Boton', (WidgetTester tester) async {
    // Se debe ejecutar la aplicacion tal cual como se ejecuta en
    // el metodo runApp, esto con el fin de levantar los Providers
    await tester.pumpWidget(
      ChangeNotifierProvider(
          create: (context) => ConvertionModel(), child: const App()),
    );

    // Verify that our counter starts at 0.
    expect(find.byKey(const Key('bin2Dec1')), findsOneWidget);
/*
    // Tap the '+' icon and trigger a frame.
    await tester.tap(find.byIcon(Icons.add));
    await tester.pump();

    // Verify that our counter has incremented.
    expect(find.text('0'), findsNothing);
    expect(find.text('1'), findsOneWidget);
  */
  });
}
