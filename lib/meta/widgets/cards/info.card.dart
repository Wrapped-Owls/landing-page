import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:wrappedowls_landing_page/app/shared/theme.wrappedowls.dart';

class InfoCard extends StatelessWidget {
  final IconData icon;
  final String title;
  final String objective;

  const InfoCard({
    Key? key,
    required this.icon,
    required this.title,
    required this.objective,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(20),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(icon),
          SizedBox(
            height: 6,
          ),
          Text(
            title,
            textAlign: TextAlign.center,
            softWrap: true,
            style: TextStyle(
              fontSize: 28,
              fontWeight: FontWeight.w600,
              color: UuuUhuThemes.currentPalette(
                UuuUhuComponents.CARD_TITLE,
              ),
            ),
          ),
          Divider(
            indent: 40,
            endIndent: 40,
          ),
          Text(
            objective,
            textAlign: TextAlign.center,
            softWrap: true,
            style: TextStyle(
              fontStyle: FontStyle.italic,
            ),
          ),
        ],
      ),
    );
  }
}
