import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:wrappedowls_landing_page/app/shared/theme.enum.dart';
import 'package:wrappedowls_landing_page/app/shared/theme.wrappedowls.dart';
import 'package:wrappedowls_landing_page/core/models/download.enum.dart';
import 'package:wrappedowls_landing_page/core/models/value/product.info.dart';
import 'package:wrappedowls_landing_page/core/util/helpers/link.helper.dart';

class ProductCard extends StatelessWidget {
  final ProductInfo info;

  const ProductCard({Key? key, required this.info}) : super(key: key);

  Widget _buildDownloadButton(DownloadLinks link) {
    return ElevatedButton.icon(
      label: Text('Download for ${link.label}'),
      icon: Icon(link.icon),
      onPressed: launchLink(info.links.value(link)),
    );
  }

  @override
  Widget build(BuildContext context) {
    final parentSize = MediaQuery.of(context).size;
    return ConstrainedBox(
      constraints: BoxConstraints.tightFor(width: 200),
      child: Card(
        clipBehavior: Clip.antiAlias,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ListTile(
              leading: IconButton(
                icon: Icon(Icons.info),
                onPressed: () {
                  print(info.description);
                },
              ),
              title: Text(
                info.name,
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
              ),
              subtitle: Text(
                info.subtitle,
                style: TextStyle(
                  color: UuuUhuThemes.currentPalette(
                    UuuUhuPalette.TITLE_TEXT,
                  ).withOpacity(0.6),
                  fontSize: 18,
                ),
              ),
            ),
            Image(
              image: info.image.image,
              width: parentSize.width * 0.66,
              height: parentSize.height * 0.5,
              fit: BoxFit.fitHeight,
            ),
            /*Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                info.description,
                style: TextStyle(
                  color: Colors.black.withOpacity(0.6),
                  fontSize: 18,
                ),
                softWrap: true,
                textAlign: TextAlign.center,
              ),
            ),*/
            ButtonBar(
              alignment: MainAxisAlignment.start,
              overflowButtonSpacing: 10,
              mainAxisSize: MainAxisSize.min,
              buttonAlignedDropdown: true,
              children: [
                _buildDownloadButton(DownloadLinks.windows),
                _buildDownloadButton(DownloadLinks.linux),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
