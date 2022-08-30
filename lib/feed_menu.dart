// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:clima/PedirMenu.dart';
import 'package:clima/menu.dart';
import 'package:clima/PostMenu.dart';

class FeedMenu extends StatelessWidget {
  const FeedMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<Tab> myTabs = <Tab>[
      Tab(text: 'Postres'),
      Tab(text: 'Bebidas'),
      Tab(text: 'Desayunos'),
    ];

    return DefaultTabController(
        length: 3,
        child: Scaffold(
            appBar: PreferredSize(
              preferredSize: Size.fromHeight(50.0),
              child: AppBar(
                  automaticallyImplyLeading: false,
                  leadingWidth: 10,
                  bottom: TabBar(
                    tabs: myTabs,
                  )),
            ),
            body: TabBarView(
              children: myTabs.map((Tab tab) {
                final String label = tab.text.toString();
                if (label == 'Postres') {
                  return menu(POSTRES);
                } else if (label == 'Bebidas') {
                  return menu(CAFES_BEBIDAS);
                } else if (label == 'Desayunos') {
                  return menu(DESAYUNOS);
                }
                Center(
                  child: RaisedButton(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    color: Colors.yellow,
                    child: Text(
                      'Realizar pedido',
                      style: TextStyle(color: Colors.white, fontSize: 20.0),
                    ),
                    onPressed: () {},
                  ),
                );
                return Center(child: (MyHomePage()));
              }).toList(),
            )));
  }
}
