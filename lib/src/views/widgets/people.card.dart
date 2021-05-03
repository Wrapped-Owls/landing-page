import 'package:flutter/material.dart';

class PeopleCard extends StatelessWidget {
  final double height;
  final double width;
  final String name;
  final Image image;

  const PeopleCard({
    Key? key,
    this.height = 160,
    this.width = 200,
    required this.name,
    required this.image,
  }) : super(key: key);

  Widget _buildDescriptionColumn(BuildContext context) {
    return Column(
      children: [
        Text(name),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints(
        minHeight: 160,
        maxHeight: height,
        minWidth: 200,
        maxWidth: width,
      ),
      alignment: Alignment.center,
      child: Row(
        children: [
          image,
          _buildDescriptionColumn(context),
        ],
      ),
    );
  }
}
