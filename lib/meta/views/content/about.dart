import 'package:flutter/material.dart';
import 'package:wrappedowls_landing_page/app/shared/theme.wrappedowls.dart';
import 'package:wrappedowls_landing_page/core/data/about.data.dart';

class WowlsAbout extends StatelessWidget {
  final double height;

  const WowlsAbout({Key? key, this.height = 200}) : super(key: key);

  Widget _buildCard(IconData icon, String title, String objective) {
    return Card(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 8),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icon),
            Text(
              title,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.w600,
                color: UuuUhuThemes.currentPalette(UuuUhuComponents.SELECT_TEXT),
              ),
            ),
            Text(
              objective,
              textAlign: TextAlign.justify,
              softWrap: true,
              style: TextStyle(
                fontStyle: FontStyle.italic,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildElements(BuildContext context, BoxConstraints constraints) {
    var crossCount = 2;
    if (constraints.biggest.width >= 650) {
      crossCount = 3;
    }
    if (constraints.biggest.width > 800) {
      crossCount = 4;
    }
    return Container(
      constraints: BoxConstraints(maxHeight: 200),
      child: GridView.count(
        scrollDirection: Axis.vertical,
        mainAxisSpacing: 20,
        crossAxisCount: crossCount,
        crossAxisSpacing: constraints.maxWidth * 0.1,
        children: [
          _buildCard(Icons.wysiwyg, 'Open Source', AboutData.openSource),
          _buildCard(
            Icons.assignment_ind,
            'User Experience',
            AboutData.userExperience,
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final ctxSize = MediaQuery.of(context).size;
    return Container(
      constraints: BoxConstraints(minHeight: height),
      padding: EdgeInsets.symmetric(vertical: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            AboutData.title,
            style: TextStyle(
              color: UuuUhuThemes.currentPalette(UuuUhuComponents.APPBAR_TEXT),
              fontWeight: FontWeight.bold,
              fontSize: 30,
            ),
            overflow: TextOverflow.clip,
          ),
          Divider(
            indent: ctxSize.width * 0.20,
            endIndent: ctxSize.width * 0.20,
          ),
          Text(
            AboutData.objective,
            style: TextStyle(fontSize: 16),
            softWrap: true,
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 12,),
          LayoutBuilder(builder: _buildElements),
        ],
      ),
    );
  }
}
