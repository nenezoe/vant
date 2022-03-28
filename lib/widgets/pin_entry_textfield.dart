import 'package:flutter/cupertino.dart';

class PinEntryTextField extends StatefulWidget {
  late final String lastPin;
  late final int fields;
  late final onSubmit;
  late final fieldWidth;
  late final fontSize;
  late final isTextObscure;
  late final showFieldAsBox;

  PinEntryTextField(
      {this.lastPin,
      this.fields: 4,
      this.onSubmit,
      this.fieldWidth: 40.0,
      this.fontSize: 20.0,
      this.isTextObscure: false,
      this.showFieldAsBox: false})
      : assert(fields > 0);

  @override
  State createState() {
    return PinEntryTextFieldState();
  }
}

class PinEntryTextFieldState extends State<PinEntryTextField> {
  late List<String> _pin;
  late List<FocusNode> _focusNodes;
  late List<TextEditingController> _textControllers;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    throw UnimplementedError();
  }
}
