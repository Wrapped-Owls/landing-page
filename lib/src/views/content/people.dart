import 'package:flutter/material.dart';
import 'package:wrappedowls_landing_page/src/views/widgets/people.card.dart';

class WowlsPeople extends StatefulWidget {
  @override
  _WowlsPeopleState createState() => _WowlsPeopleState();
}

class _WowlsPeopleState extends State<WowlsPeople> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          PeopleCard(
            name: 'Jictyvoo',
            image: Image.network(
              'https://avatars.githubusercontent.com/u/21112095',
              height: 180,
              width: 180,
            ),
          ),
          PeopleCard(
            name: 'Rustorier',
            image: Image.network(
              'https://avatars.githubusercontent.com/u/21112095',
            ),
          ),
          PeopleCard(
            name: 'Jonh',
            image: Image.network(
              'https://avatars.githubusercontent.com/u/21112095',
            ),
          ),
          PeopleCard(
            name: 'Victor',
            image: Image.network(
              'https://avatars.githubusercontent.com/u/21112095',
            ),
          ),
        ],
      ),
    );
  }
}
