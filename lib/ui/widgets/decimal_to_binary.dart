import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_binario_decimal/domain/models/convertion_model.dart';

class DecimalToBinary extends StatelessWidget {
  const DecimalToBinary({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Consumer<ConvertionModel>(
            builder: (context, calculator, child) {
              return Container(
                padding: const EdgeInsets.all(8.0),
                alignment: Alignment.centerRight,
                child: Text(
                  calculator.binary,
                  textAlign: TextAlign.right,
                  style: const TextStyle(
                      fontWeight: FontWeight.bold, fontSize: 35),
                ),
              );
            },
          ),
          Consumer<ConvertionModel>(
            builder: (context, calculator, child) {
              return Container(
                padding: const EdgeInsets.all(8.0),
                alignment: Alignment.centerRight,
                child: Text(
                  calculator.decimal,
                  textAlign: TextAlign.right,
                  style: const TextStyle(
                      fontWeight: FontWeight.bold, fontSize: 35),
                ),
              );
            },
          ),
          Expanded(
              child: Row(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              KeyPadButton(1, context),
              KeyPadButton(2, context),
              KeyPadButton(3, context)
            ],
          )),
          Expanded(
              child: Row(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              KeyPadButton(4, context),
              KeyPadButton(5, context),
              KeyPadButton(6, context)
            ],
          )),
          Expanded(
              child: Row(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              KeyPadButton(7, context),
              KeyPadButton(8, context),
              KeyPadButton(9, context)
            ],
          )),
          Expanded(
              child: Row(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              KeyPadButton(0, context),
              Container(
                  padding: const EdgeInsets.all(8.0),
                  child: MaterialButton(
                    color: Theme.of(context).colorScheme.secondaryVariant,
                    child: const Text(
                      "Reset",
                      style: TextStyle(fontSize: 20.0, color: Colors.white),
                    ),
                    onPressed: () =>
                        Provider.of<ConvertionModel>(context, listen: false)
                            .reset(),
                  ))
            ],
          )),
        ],
      ),
    );
  }

  Widget KeyPadButton(number, context) {
    return Expanded(
        child: Container(
            padding: const EdgeInsets.all(8.0),
            child: MaterialButton(
              color: Theme.of(context).primaryColor,
              child: Text(
                number.toString(),
                style: const TextStyle(color: Colors.white),
              ),
              onPressed: () =>
                  Provider.of<ConvertionModel>(context, listen: false)
                      .updateDecimal(number),
            )));
  }
}
