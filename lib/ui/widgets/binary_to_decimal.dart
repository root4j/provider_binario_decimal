import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_binario_decimal/domain/models/convertion_model.dart';

class BinaryToDecimal extends StatelessWidget {
  const BinaryToDecimal({Key? key}) : super(key: key);

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
              flex: 4,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  KeyPadButton(const Key('bin2Dec1'), 1, context),
                  KeyPadButton(const Key('bin2Dec0'), 0, context)
                ],
              )),
          Expanded(
              flex: 1,
              child: Container(
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
                ),
              ))
        ],
      ),
    );
  }

  Widget KeyPadButton(key, number, context) {
    return Expanded(
        child: Container(
            padding: const EdgeInsets.all(8.0),
            child: MaterialButton(
              key: key,
              color: Theme.of(context).primaryColor,
              child: Text(
                number.toString(),
                style: const TextStyle(color: Colors.white),
              ),
              onPressed: () =>
                  Provider.of<ConvertionModel>(context, listen: false)
                      .updateBinary(number),
            )));
  }
}
