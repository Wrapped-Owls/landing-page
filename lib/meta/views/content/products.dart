import 'package:flutter/material.dart';

class WowlsProducts extends StatelessWidget {
  final double height;

  const WowlsProducts({Key? key, this.height = 200}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints(
        minHeight: 200,
        minWidth: MediaQuery.of(context).size.width / 2,
      ),
      alignment: Alignment.center,
      child: Text('A Product list, that will contains a list of images'),
    );
  }
}
