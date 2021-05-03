import 'package:flutter/material.dart';

import '../../models/social.links.dart';
import '../widgets/people.card.dart';

class WowlsPeople extends StatefulWidget {
  @override
  _WowlsPeopleState createState() => _WowlsPeopleState();
}

class _WowlsPeopleState extends State<WowlsPeople> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'The people behind Wrapped Owls',
          maxLines: 2,
          textAlign: TextAlign.left,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 28,
          ),
        ),
        Scrollbar(
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            padding: EdgeInsets.only(left: 8, right: 8),
            child: Row(
              children: [
                PeopleCard(
                  name: 'Jictyvoo',
                  text:
                      '📜 Graduating in Computer Engineering at the Universidade Estadual de Feira de Santana (UEFS)\n\n'
                      '🔧 Computer technician with focusing on System Development by the Serviço Nacional de Aprendizagem Industrial (SENAI)',
                  image: Image.network(
                    'https://avatars.githubusercontent.com/u/21112095',
                  ),
                  links: SocialLinksValue(
                    github: 'jictyvoo',
                    linkedin: 'jictyvoo',
                  ),
                ),
                PeopleCard(
                  name: 'Rustorier',
                  text: 'about this user about this user about this user '
                      'about this user about this user about this user',
                  image: Image.network(
                    'https://avatars.githubusercontent.com/u/21112095',
                  ),
                ),
                PeopleCard(
                  name: 'Jonh',
                  text: 'Any text',
                  image: Image.network(
                    'https://avatars.githubusercontent.com/u/21112095',
                  ),
                ),
                PeopleCard(
                  name: 'Victor',
                  text: 'Lorem Ipsum',
                  image: Image.network(
                    'https://avatars.githubusercontent.com/u/21112095',
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
