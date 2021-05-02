import 'package:flutter/material.dart';
import 'package:wrappedowls_landing_page/theme.wrappedowls.dart';

class WowlsFooter extends StatelessWidget {
  final Color? backgroundColor;
  final Alignment alignment;
  final EdgeInsetsGeometry padding;
  final Widget? child;
  final DateTime _enterpriseBirthDate;

  WowlsFooter({
    Key? key,
    this.backgroundColor,
    this.alignment = Alignment.bottomCenter,
    this.padding = const EdgeInsets.all(5.0),
    this.child,
  })  : _enterpriseBirthDate = DateTime(2020),
        super(key: key);

  Widget _buildContent() {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            '©${_enterpriseBirthDate.year}-${DateTime.now().year}',
            strutStyle: StrutStyle(fontWeight: FontWeight.w300),
          ),
          Text(
            'Wrapped Owls',
            strutStyle: StrutStyle(fontWeight: FontWeight.w300),
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color:
          backgroundColor ?? UuuUhuThemes.darkColors[UuuUhuComponents.DIALOG],
      child: Align(
        alignment: alignment,
        child: Padding(
          //padding: EdgeInsets.all(padding == null ?5.0:padding),
          padding: padding,
          child: child ?? _buildContent(),
        ),
      ),
    );
  }
}
