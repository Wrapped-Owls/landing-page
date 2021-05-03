import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

enum SocialLinks { github, linkedin, twitch, twitter, instagram }

extension SocialLinkHelper on SocialLinks {
  String get label {
    switch (this) {
      case SocialLinks.github:
        return 'GitHub';
      case SocialLinks.linkedin:
        return 'LinkedIn';
      case SocialLinks.twitch:
        return 'Twitch';
      case SocialLinks.twitter:
        return 'Twitter';
      case SocialLinks.instagram:
        return 'Instagram';
    }
  }

  IconData get icon {
    switch (this) {
      case SocialLinks.github:
        return FontAwesomeIcons.github;
      case SocialLinks.linkedin:
        return FontAwesomeIcons.linkedin;
      case SocialLinks.twitch:
        return FontAwesomeIcons.twitch;
      case SocialLinks.twitter:
        return FontAwesomeIcons.twitter;
      case SocialLinks.instagram:
        return FontAwesomeIcons.instagram;
    }
  }

  String get url {
    switch (this) {
      case SocialLinks.github:
        return 'https://github.com/';
      case SocialLinks.linkedin:
        return 'https://www.linkedin.com/in/';
      case SocialLinks.twitch:
        return 'https://www.twitch.tv/';
      case SocialLinks.twitter:
        return 'https://twitter.com/';
      case SocialLinks.instagram:
        return 'https://www.instagram.com/';
    }
  }
}
