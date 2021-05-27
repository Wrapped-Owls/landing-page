import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:wrappedowls_landing_page/app/shared/theme.enum.dart';

import 'contact_us.controller.dart';
import 'contact_us.inputs.dart';

class ContactUsForm extends StatelessWidget {
  final GlobalKey<FormState> _formKey;
  final ContactUsController _contactUsController;

  ContactUsForm({Key? key})
      : _formKey = GlobalKey<FormState>(),
        _contactUsController = ContactUsController(),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Contact Us',
            softWrap: true,
            style: TextStyle(
              color: UuuUhuPalette.APPBAR_TEXT.of(context),
              fontWeight: FontWeight.bold,
              fontSize: 30,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          TextFormField(
            keyboardType: TextInputType.name,
            controller: _contactUsController.inputController(
              EowlsContactUs.NAME,
            ),
            validator: _contactUsController.validateName,
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
            keyboardType: TextInputType.emailAddress,
            controller: _contactUsController.inputController(
              EowlsContactUs.EMAIL,
            ),
            validator: _contactUsController.validateEmail,
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
          ConstrainedBox(
            constraints: BoxConstraints(maxHeight: 260),
            child: TextFormField(
              maxLength: 600,
              keyboardType: TextInputType.text,
              controller: _contactUsController.inputController(
                EowlsContactUs.MESSAGE,
              ),
              validator: _contactUsController.validateMessage,
              decoration: InputDecoration(
                labelText: 'Message:',
                hintText: 'What you interested for',
                errorMaxLines: 4,
              ),
              expands: true,
              maxLines: null,
              minLines: null,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          SizedBox(
            width: double.infinity,
            height: 40,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: UuuUhuPalette.BUTTON.of(context),
              ),
              onPressed: () {
                if (_formKey.currentState?.validate() ?? false) {
                  // TODO submit a form with data to server
                }
              },
              child: Text('Submit'),
            ),
          ),
        ],
      ),
    );
  }
}
