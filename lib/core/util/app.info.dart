import 'package:flutter/material.dart';
import 'package:wrappedowls_landing_page/app/shared/wrappedowls.icons.dart';

abstract class AppInformation {
  static const name = 'Wrapped Owls Landing Page';
  static const version = '0.0.1';
  static const legalese = '©2021 Wrapped Owls and its authors';
  static const icon = Icon(
    WrappedOwlsIcons.company_logo,
    size: 80.0,
  );
  static const content = [
    Text(
      'The landing page for Wrapped Owls',
      style: TextStyle(
        fontWeight: FontWeight.bold,
      ),
      textAlign: TextAlign.center,
    ),
    Divider(),
    Text(
      ' We choose this name because owls are awesome, and we are in love with'
      ' games, and want to develop system focused on gamers, and games also!',
      style: TextStyle(
        fontStyle: FontStyle.italic,
      ),
    ),
    Divider(),
    Text(
      'With the help of so many frameworks that exists, we planned to create '
      'many apps, and this is just one of them. '
      'This is not only a landing page, you can find some helpers tools here also,'
      'so take a look and see it! Thanks',
      textAlign: TextAlign.justify,
    )
  ];
}
