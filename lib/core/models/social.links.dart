import 'social.enum.dart';

class SocialLinksValue {
  final String github;
  final String linkedin;
  final String twitch;
  final String twitter;
  final String instagram;

  const SocialLinksValue({
    this.github = '',
    this.linkedin = '',
    this.twitch = '',
    this.twitter = '',
    this.instagram = '',
  });

  String name(SocialLinks social) {
    switch (social) {
      case SocialLinks.github:
        return github;
      case SocialLinks.linkedin:
        return linkedin;
      case SocialLinks.twitch:
        return twitch;
      case SocialLinks.twitter:
        return twitter;
      case SocialLinks.instagram:
        return instagram;
    }
  }
}
