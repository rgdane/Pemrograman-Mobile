import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:praktikum5/model/item.dart';

class ItemPage extends StatelessWidget {
  const ItemPage({super.key});
  final itemArgs = ModalRoute.of(context)!.settings.arguments as Item;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Item Page')),
      body: Container(

      )
    );
  }
}