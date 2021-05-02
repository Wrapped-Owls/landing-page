import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../wrappedowls.icons.dart';

class WowlsNavbar extends AppBar {
  WowlsNavbar()
      : super(
          leading: IconButton(
            onPressed: () async {
              const url = 'https://wrappedowl.com/';
              if (await canLaunch(url)) {
                await launch(url);
              } else {
                throw 'Could not launch $url';
              }
            },
            icon: Icon(WrappedOwlsIcons.company_logo),
          ),
          actions: [
            TextButton(
              onPressed: () {},
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(WrappedOwlsIcons.friggraynd_cvheip),
                  Text('DevTools'),
                ],
              ),
            ),
            SizedBox(
              width: 10,
            ),
            TextButton(
              onPressed: () {},
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(WrappedOwlsIcons.friggraynd_squid),
                  Text('Products'),
                ],
              ),
            )
          ],
        );
}
