import 'package:clima/letters/smallText.dart';
import 'package:flutter/material.dart';
import 'scroll_image.dart';
import 'letters/big_text.dart';

class BodyMenu extends StatefulWidget {
  const BodyMenu({Key? key}) : super(key: key);

  @override
  State<BodyMenu> createState() => _BodyMenuState();
}

class _BodyMenuState extends State<BodyMenu> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      //parte superior del inicio

      body: Column(
        children: <Widget>[
          Container(
              margin: EdgeInsets.only(top: 50, bottom: 20),
              padding: EdgeInsets.only(left: 20, right: 20),
              child: Column(
                children: [
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: [
                            BigText(
                              text: 'Medellin',
                              size: 30,
                              color: Color.fromARGB(255, 140, 108, 136),
                            ),
                            Row(children: [
                              SmallText(
                                text: 'Sedes locales',
                              ),
                              Icon(Icons.arrow_drop_down_rounded),
                            ]),
                          ],
                        ),
                        Center(
                          child: Container(
                            width: 45,
                            height: 45,
                            child:
                                Icon(Icons.shopping_cart, color: Colors.white),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              color: Color.fromARGB(255, 140, 108, 136),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              )),
          //imagenes del inicio
          ScrollImage(),
          Container(
            alignment: Alignment(-0.8, 1),
            child: Text(
              'Donde las cosas magicas suceden :)',
              style: TextStyle(
                fontFamily: 'Silkscreen',
                fontSize: 10,
                color: Color.fromARGB(255, 182, 169, 156),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
