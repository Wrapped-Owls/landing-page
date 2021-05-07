import 'package:flutter/material.dart';

class WowlsAbout extends StatelessWidget {
  final double height;

  const WowlsAbout({Key? key, this.height = 200}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints(minHeight: height),
      alignment: Alignment.center,
      child: Text(
        'We like owls, and say Uuu UHU uuu uhu uuu uuu uhu',
      ),
    );
  }
}
