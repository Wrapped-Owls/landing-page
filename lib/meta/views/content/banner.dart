import 'package:flutter/material.dart';

class WowlsBanner extends StatelessWidget {
  final double height;

  const WowlsBanner({Key? key, this.height = 400}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints(
        minHeight: height,
        minWidth: MediaQuery.of(context).size.width / 2,
      ),
      alignment: Alignment.center,
      child: Text('A Banner, that will contains video or image, idk'),
    );
  }
}
