import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:wrappedowls_landing_page/core/data/people.data.dart';
import 'package:wrappedowls_landing_page/meta/widgets/cards/people.card.dart';

class WowlsPeople extends StatefulWidget {
  final double height;

  const WowlsPeople({Key? key, this.height = 210}) : super(key: key);

  @override
  _WowlsPeopleState createState() => _WowlsPeopleState();
}

class _WowlsPeopleState extends State<WowlsPeople> {
  List<PeopleCard> _buildPeopleList(BuildContext context) {
    final list = <PeopleCard>[];
    for (final person in PeopleData.people.values) {
      list.add(PeopleCard(
        name: person.name,
        text: person.description,
        image: person.image,
        links: person.links,
      ));
    }
    return list;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 8, right: 8),
      constraints: BoxConstraints(minHeight: widget.height),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
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
          SizedBox(
            height: 10,
          ),
          Scrollbar(
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              padding: EdgeInsets.only(left: 8, right: 8),
              child: Row(
                children: _buildPeopleList(context),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
