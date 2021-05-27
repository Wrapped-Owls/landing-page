import 'package:flutter/material.dart';
import 'package:wrappedowls_landing_page/core/models/social.enum.dart';
import 'package:wrappedowls_landing_page/core/models/social.links.dart';
import 'package:wrappedowls_landing_page/core/util/helpers/link.helper.dart';

class PeopleCard extends StatelessWidget {
  final double height;
  final double width;
  final String name;
  final String text;
  final Image image;
  final SocialLinksValue links;

  const PeopleCard({
    Key? key,
    this.height = 200,
    this.width = 400,
    required this.name,
    required this.text,
    required this.image,
    this.links = const SocialLinksValue(),
  }) : super(key: key);

  ElevatedButton _buildSocialButton(SocialLinks social) {
    return ElevatedButton.icon(
      label: Text(social.label),
      icon: Icon(social.icon),
      onPressed: launchLink(social.url + links.name(social)),
    );
  }

  List<ElevatedButton> _buildSocial() {
    final validButtons = <ElevatedButton>[];
    for (final social in SocialLinks.values) {
      if (links.name(social).isNotEmpty) {
        validButtons.add(_buildSocialButton(social));
      }
    }
    return validButtons;
  }

  List<Widget> _buildDescriptionColumn() {
    return <Widget>[
      Text(
        name,
        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
      ),
      Divider(),
      Text(
        text,
        softWrap: true,
        textAlign: TextAlign.justify,
      ),
      Divider(),
      ButtonBar(
        alignment: MainAxisAlignment.center,
        overflowButtonSpacing: 10,
        mainAxisSize: MainAxisSize.min,
        buttonAlignedDropdown: true,
        children: _buildSocial(),
      ),
    ];
  }

  Image _buildFitImage(BoxConstraints constraints) {
    final width =
        (constraints.maxWidth > 600) ? 300.0 : (constraints.maxWidth / 2);
    return Image(
      image: image.image,
      width: width,
      fit: BoxFit.fitWidth,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      child: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          if (constraints.maxWidth > 530) {
            return Row(
              mainAxisAlignment: constraints.maxWidth > 1000
                  ? MainAxisAlignment.spaceAround
                  : MainAxisAlignment.spaceBetween,
              children: [
                _buildFitImage(constraints),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 12),
                  constraints: BoxConstraints.tightFor(
                    width: constraints.maxWidth / 2,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: _buildDescriptionColumn(),
                  ),
                ),
              ],
            );
          }
          return Padding(
            padding: EdgeInsets.all(12),
            child: Column(
              children: [
                CircleAvatar(
                  backgroundImage: image.image,
                  radius: constraints.maxWidth / 4.4,
                ),
                SizedBox(
                  height: 14,
                ),
                ..._buildDescriptionColumn(),
              ],
            ),
          );
        },
      ),
    );
  }
}
