import 'download.enum.dart';

class DownloadLinksValue {
  final String playstore;
  final String macos;
  final String steam;
  final String windows;
  final String linux;

  const DownloadLinksValue({
    this.playstore = '',
    this.macos = '',
    this.steam = '',
    this.windows = '',
    this.linux = '',
  });

  String value(DownloadLinks social) {
    switch (social) {
      case DownloadLinks.playstore:
        return playstore;
      case DownloadLinks.macos:
        return macos;
      case DownloadLinks.steam:
        return steam;
      case DownloadLinks.windows:
        return windows;
      case DownloadLinks.linux:
        return linux;
    }
  }
}
