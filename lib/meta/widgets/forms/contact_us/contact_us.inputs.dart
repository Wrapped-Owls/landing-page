import 'package:flutter/material.dart';

enum EowlsContactUs { NAME, EMAIL, MESSAGE }

class ContactUsInputs {
  final TextEditingController nameInput;
  final TextEditingController emailInput;
  final TextEditingController messageInput;

  ContactUsInputs()
      : nameInput = TextEditingController(),
        emailInput = TextEditingController(),
        messageInput = TextEditingController();

  TextEditingController getController(EowlsContactUs inputType) {
    switch (inputType) {
      case EowlsContactUs.NAME:
        return nameInput;
      case EowlsContactUs.EMAIL:
        return emailInput;
      case EowlsContactUs.MESSAGE:
        return messageInput;
    }
  }
}
