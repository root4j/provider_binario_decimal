import 'package:flutter/material.dart';
import 'package:provider_binario_decimal/ui/pages/converter.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Provider Example',
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Converter BinToDec And DecToBin"),
        ),
        body: const Center(
          child: Converter(),
        ),
      )
    );
  }
}