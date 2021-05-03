import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:wrappedowls_landing_page/src/models/social.enum.dart';

import '../../models/social.links.dart';

class PeopleCard extends StatelessWidget {
  final double height;
  final double width;
  final String name;
  final String text;
  final Image image;
  final SocialLinksValue links;

  const PeopleCard({
    Key? key,
    this.height = 260,
    this.width = 400,
    required this.name,
    required this.text,
    required this.image,
    this.links = const SocialLinksValue(),
  }) : super(key: key);

  Widget _buildSocialButton(SocialLinks social) {
    return ElevatedButton.icon(
      label: Text(social.label),
      icon: Icon(social.icon),
      onPressed: () async {
        final url = social.url + links.name(social);
        if (await canLaunch(url)) {
          await launch(url);
        } else {
          throw 'Could not launch $url';
        }
      },
    );
  }

  Widget _buildDescriptionColumn(BuildContext context) {
    return ConstrainedBox(
      constraints: BoxConstraints.tight(Size.fromWidth(width / 3.2)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            name,
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          Divider(),
          AspectRatio(
            aspectRatio: 1,
            child: Scrollbar(
              child: SingleChildScrollView(
                child: Text(
                  text,
                  softWrap: true,
                  textAlign: TextAlign.justify,
                ),
              ),
            ),
          ),
          Divider(),
          _buildSocialButton(SocialLinks.github),
          SizedBox(
            height: 4,
          ),
          _buildSocialButton(SocialLinks.linkedin),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ConstrainedBox(
        constraints: BoxConstraints(
          minHeight: 160,
          maxHeight: height,
          minWidth: 200,
          maxWidth: width,
        ),
        child: Row(
          children: [
            image,
            SizedBox(
              width: 8,
            ),
            _buildDescriptionColumn(context),
          ],
        ),
      ),
    );
  }
}
