import 'package:flutter/material.dart';

class WowlsCustomGrid extends StatelessWidget {
  final List<Widget> children;
  final int Function(double)? crossQuantity;
  final double crossAxisSpacing;
  final double mainAxisSpacing;

  const WowlsCustomGrid({
    Key? key,
    required this.children,
    this.crossQuantity,
    this.crossAxisSpacing = 0.04,
    this.mainAxisSpacing = 14,
  })  : assert(crossAxisSpacing < 0.6, 'spacing should be lesser than 60%'),
        super(key: key);

  ConstrainedBox _limitSize(Widget child, double width) {
    return ConstrainedBox(
      constraints: BoxConstraints.tightFor(width: width),
      child: child,
    );
  }

  Row _buildRowItems(List<Widget> children, double parentWidth) {
    final constrainedChildren = <Widget>[];
    final spacing = (parentWidth * crossAxisSpacing);
    final totalSpacing = spacing * children.length - 1;
    for (var index = 0; index < children.length; index++) {
      final child = children[index];
      constrainedChildren.add(
        _limitSize(child, (parentWidth - totalSpacing) / children.length),
      );
    }
    return Row(
      mainAxisSize: MainAxisSize.max,
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: constrainedChildren,
    );
  }

  Widget _buildElements(BuildContext context, BoxConstraints constraints) {
    final parentWidth = constraints.biggest.width;
    var crossCount = 2;
    if (crossQuantity != null) {
      crossCount = crossQuantity!(parentWidth);
    } else if (parentWidth > 1200) {
      crossCount = 4;
    } else if (parentWidth >= 650) {
      crossCount = 3;
    }

    if (children.length <= crossCount) {
      return _buildRowItems(children, parentWidth);
    }
    final columnChildren = <Widget>[];
    final _tempChildren = <Widget>[];
    var count = 0;
    for (final child in children) {
      _tempChildren.add(child);
      count += 1;
      if (count >= crossCount) {
        if (columnChildren.isNotEmpty) {
          columnChildren.add(SizedBox(height: mainAxisSpacing));
        }
        columnChildren.add(_buildRowItems(_tempChildren, parentWidth));
        _tempChildren.clear();
        count = 0;
      }
    }
    if (_tempChildren.isNotEmpty) {
      columnChildren.add(_buildRowItems(_tempChildren, parentWidth));
    }
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      children: columnChildren,
    );
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: _buildElements);
  }
}
