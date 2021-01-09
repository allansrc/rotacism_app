import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rotacism_app/app/routes/app_routes.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text(widget.title)),
        body: Center(
            child: Column(mainAxisAlignment: MainAxisAlignment.center, children: <Widget>[
          Container(
              width: MediaQuery.of(context).size.width * .8,
              child: RaisedButton(
                  onPressed: () => {Get.toNamed(AppRoutes.memog)},
                  color: Colors.green.withOpacity(.9),
                  child: Text(
                    'Jogo da Memória',
                    style: TextStyle(color: Colors.white),
                  ))),
          Container(
              width: MediaQuery.of(context).size.width * .8,
              child: RaisedButton(
                  onPressed: () {},
                  color: Colors.green.withOpacity(.9),
                  child: Text(
                    'Palavras Cruzadas',
                    style: TextStyle(color: Colors.white),
                  ))),
        ])));
  }
}