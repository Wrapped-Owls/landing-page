import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:wrappedowls_landing_page/app/shared/theme.enum.dart';
import 'package:wrappedowls_landing_page/app/shared/theme.wrappedowls.dart';

class WowlsContact extends StatefulWidget {
  final double minHeight;

  WowlsContact({Key? key, this.minHeight = 200}) : super(key: key);

  @override
  _WowlsContactState createState() => _WowlsContactState();
}

class _WowlsContactState extends State<WowlsContact> {
  final GlobalKey<FormState> _formKey;
  Widget _buttonTitle;

  _WowlsContactState()
      : _buttonTitle = Text('Submit'),
        _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    final ctxSize = MediaQuery.of(context).size;
    return Container(
      constraints: BoxConstraints(
        minHeight: widget.minHeight,
        maxWidth: 400,
      ),
      alignment: Alignment.center,
      child: Form(
        key: _formKey,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Contact Us',
              softWrap: true,
              style: TextStyle(
                color: UuuUhuThemes.currentPalette(UuuUhuPalette.APPBAR_TEXT),
                fontWeight: FontWeight.bold,
                fontSize: 30,
              ),
            ),
            TextFormField(
              maxLength: 255,
              keyboardType: TextInputType.name,
              decoration: InputDecoration(
                labelText: 'Name:',
                hintText: 'Your name here',
                errorMaxLines: 4,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            TextFormField(
              maxLength: 255,
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                labelText: 'Email:',
                hintText: 'some@email.com',
                errorMaxLines: 4,
              ),
              inputFormatters: [
                FilteringTextInputFormatter.singleLineFormatter,
              ],
            ),
            SizedBox(
              height: 10,
            ),
            TextFormField(
              maxLength: 600,
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                labelText: 'Message:',
                hintText: 'What you interested for',
                errorMaxLines: 4,
              ),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: UuuUhuPalette.BUTTON.of(context),
              ),
              onPressed: () {
                if (_formKey.currentState?.validate() ?? false) {
                  setState(() {
                    _buttonTitle = CircularProgressIndicator();
                  });
                }
              },
              child: _buttonTitle,
            )
          ],
        ),
      ),
    );
  }
}
