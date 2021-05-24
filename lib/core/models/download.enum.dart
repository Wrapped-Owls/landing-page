import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

enum DownloadLinks { playstore, macos, steam, windows, linux }

extension DownloadLinkHelper on DownloadLinks {
  String get label {
    switch (this) {
      case DownloadLinks.playstore:
        return 'PlayStore';
      case DownloadLinks.macos:
        return 'MacOS';
      case DownloadLinks.steam:
        return 'Steam';
      case DownloadLinks.windows:
        return 'Windows';
      case DownloadLinks.linux:
        return 'Linux';
    }
  }

  IconData get icon {
    switch (this) {
      case DownloadLinks.playstore:
        return FontAwesomeIcons.googlePlay;
      case DownloadLinks.macos:
        return FontAwesomeIcons.apple;
      case DownloadLinks.steam:
        return FontAwesomeIcons.steam;
      case DownloadLinks.windows:
        return FontAwesomeIcons.windows;
      case DownloadLinks.linux:
        return FontAwesomeIcons.linux;
    }
  }
}
