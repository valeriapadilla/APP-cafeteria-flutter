import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class PedirMenu extends StatelessWidget {
  const PedirMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ButtonTheme(
      minWidth: 300.0,
      height: 100.0,
      child: RaisedButton(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        color: Color.fromARGB(255, 255, 255, 255),
        child: Text(
          'Realizar pedido',
          style:
              TextStyle(color: Color.fromARGB(255, 47, 45, 8), fontSize: 25.0),
        ),
        onPressed: () {},
      ),
    );
  }
}
