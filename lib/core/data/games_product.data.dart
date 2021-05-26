import 'package:flutter/material.dart';
import 'package:wrappedowls_landing_page/core/models/download.links.dart';
import 'package:wrappedowls_landing_page/core/models/value/product.info.dart';

abstract class GamesProductData {
  static final products = <ProductInfo>[
    ProductInfo(
      name: 'PPA: Road to Immortal',
      subtitle: 'A game made in honor of PPA',
      description: 'A game made in honor of PPA, paying homage to '
          'how good it is to make fun of him. Kappa ',
      image: Image.asset(
        'assets/images/games/970a5100-b170-11e9-90d8-ac88fe749996.png',
      ),
      links: DownloadLinksValue(
        windows:
            'https://github.com/Wrapped-Owls/PPA_Road_to_Imortal/releases/download/2.0/ppaRoadToImortal.zip',
        linux:
            'https://github.com/Wrapped-Owls/PPA_Road_to_Imortal/releases/download/2.0/ppaRoadToImortal.love',
      ),
    ),
    ProductInfo(
      name: 'Spanvaders',
      subtitle:
          'A Asteroids+SpaceInvaders like game that is built to give fun to players',
      description:
          'A Asteroids+SpaceInvaders like game that is built to give fun to players',
      image: Image.asset(
        'assets/images/games/e495-2cb99-4cf7391-3c828-cfb8-cb49-a8.png',
      ),
      links: DownloadLinksValue(
        windows: 'https://scratch.mit.edu/projects/163175012/',
        linux: 'https://scratch.mit.edu/projects/163175012/',
      ),
    ),
    ProductInfo(
      name: 'HomeFish',
      subtitle:
          'Alone and fighting for survivor running away from the toxic mist',
      description: 'Your\'re a fish, alone in the sea, wishing to find a new '
          'home, after a toxic trash was dropped into your previous home. Alone '
          'and fighting for survivor running away from the toxic mist, can you '
          'find a new home?',
      image: Image.asset(
        'assets/images/games/d8b58858-b83082c-1e30cdd-b8007cd899.png',
      ),
      links: DownloadLinksValue(
        windows:
            'https://github.com/Wrapped-Owls/Homefish/releases/download/Pre-release/game.love',
        linux:
            'https://github.com/Wrapped-Owls/Homefish/releases/download/Pre-release/game.love',
      ),
    ),
  ];
}
