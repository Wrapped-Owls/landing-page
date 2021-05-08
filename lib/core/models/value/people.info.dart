import 'package:flutter/material.dart';
import 'package:wrappedowls_landing_page/core/models/social.links.dart';

class PeopleInfo {
  final String name;
  final String description;
  final Image image;
  final SocialLinksValue links;

  const PeopleInfo({
    required this.name,
    required this.description,
    required this.image,
    required this.links,
  });
}
