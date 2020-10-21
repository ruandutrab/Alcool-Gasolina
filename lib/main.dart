import 'package:flutter/material.dart';
import 'package:flutter_masked_text/flutter_masked_text.dart';
import 'package:myproject/widgets/input.widget.dart';
import 'package:myproject/widgets/loading.button.widget.dart';
import 'package:myproject/widgets/submit-form.dart';
import 'package:myproject/widgets/success.widget.dart';
import 'widgets/logo.widget.dart';

void main() => runApp(HomeAnime());

class HomeAnime extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Alcool ou Gasolina',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  var _gasCtrl = new MoneyMaskedTextController();
  var _alcCtrl = new MoneyMaskedTextController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: ListView(
        children: [
          Logo(),
          SubmitForm(
            gasCtrl: _alcCtrl,
            alcCtrl: _gasCtrl,
            busy: false,
            submitFunc: () {},
          ),
        ],
      ),
    );
  }
}
