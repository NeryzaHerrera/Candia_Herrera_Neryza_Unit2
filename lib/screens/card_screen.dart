import 'package:flutter/material.dart';

class CardScreen extends StatelessWidget {
  const CardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Card screen'),
      ),
      body: const Center(
        child: MyStatelessWidget2(),
      ),
    );
  }
}

class MyStatelessWidget2 extends StatelessWidget {
  const MyStatelessWidget2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Card(
        child: SizedBox(
          width: 500,
          height: 200,
          child: Column(
            children: <Widget>[
              const ListTile(
                  leading: Icon(Icons.credit_card),
                  title: Text('7532 3546 XXXX 9742'),
                  subtitle: Text(
                    'NERYZA          VALID THRU',
                  )),
              Row(
                children: <Widget>[
                  Text("                   Candia Herrera        "),
                  Text("02/24"),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
