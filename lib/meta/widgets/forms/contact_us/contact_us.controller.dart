import 'package:flutter/material.dart';

import 'contact_us.inputs.dart';

class ContactUsController {
  final ContactUsInputs _inputs;

  ContactUsController() : _inputs = ContactUsInputs();

  TextEditingController inputController(EowlsContactUs inputType) {
    return _inputs.getController(inputType);
  }

  String? validateName(String? toValidate) {
    toValidate ??= '';
    if (toValidate.isEmpty) {
      return 'name is obligatory';
    }
    if (toValidate.length > 254) {
      return 'your name is too big and powerful for us, try a little shorter one';
    }
    return null;
  }

  String? validateEmail(String? toValidate) {
    toValidate ??= '';
    if (toValidate.length < 3 && toValidate.length > 254) {
      return 'no valid email has be given, please make sure sent an valid email';
    }
    // To improve performance, verify if email has only 1 domain
    final parts = toValidate.split('@');
    if (parts.length != 2) {
      return 'the given email is missing domain';
    }
    if (!RegExp(
      r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+",
    ).hasMatch(parts[0])) {
      return 'first part of email is not valid';
    }
    return null;
  }

  String? validateMessage(String? toValidate) {
    toValidate ??= '';
    final messageLength = toValidate.length;
    if (messageLength < 40) {
      return 'Your message is too weak, please say more about what you want';
    }
    return null;
  }
}
