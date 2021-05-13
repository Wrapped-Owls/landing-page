import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: BoxConstraints.tightFor(width: 200),
      child: Card(
        clipBehavior: Clip.antiAlias,
        child: Column(
          children: [
            ListTile(
              leading: Icon(Icons.arrow_drop_down_circle),
              title: const Text('Product A'),
              subtitle: Text(
                'Game subtitle or Genres',
                style: TextStyle(color: Colors.black.withOpacity(0.6)),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                'About the game',
                style: TextStyle(color: Colors.black.withOpacity(0.6)),
              ),
            ),
            Image.asset('assets/images/166096347_172860711326908_2531234240470099110_n.jpg'),
            ButtonBar(
              alignment: MainAxisAlignment.start,
              children: [
                TextButton.icon(
                  icon: Icon(FontAwesomeIcons.linux),
                  label: const Text('Download for Linux'),
                  onPressed: () {
                    // Perform some action
                  },
                ),
                TextButton.icon(
                  icon: Icon(FontAwesomeIcons.windows),
                  label: const Text('Download for Windows'),
                  onPressed: () {
                    // Perform some action
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
