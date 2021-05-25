import 'package:flutter/material.dart';

import '../../widgets/forms/contact_us/contact_us.form.dart';

class WowlsContact extends StatefulWidget {
  final double minHeight;

  WowlsContact({Key? key, this.minHeight = 200}) : super(key: key);

  @override
  _WowlsContactState createState() => _WowlsContactState();
}

class _WowlsContactState extends State<WowlsContact> {
  Widget _buildForm() {
    return Container(
      constraints: BoxConstraints(
        minHeight: widget.minHeight,
        maxWidth: 400,
      ),
      alignment: Alignment.center,
      child: ContactUsForm(),
    );
  }

  Widget _buildLayout(BuildContext context, BoxConstraints constraints) {
    if (constraints.maxWidth <= 880) {
      return _buildForm();
    }
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        _buildForm(),
        Image.asset(
          'assets/images/plane_mail_gif.gif',
          width: constraints.maxWidth / 2,
          fit: BoxFit.fitWidth,
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: _buildLayout,
    );
  }
}
