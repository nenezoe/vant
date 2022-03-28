import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class OTPScreen extends StatelessWidget {
  const OTPScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(
        children: <Widget>[
          Text('OTP Code'),
          SizedBox(
            height: 20,
          ),
          Text("we'll send you an OTP code to your mobile"),
          Text("number please enter the code below"),
          SizedBox(
            height: 40,
          ),
          Container(
            child: Padding(
              padding: EdgeInsets.all(8.0),
              child: PinEntryTextField(
                  showFieldAsBox: true,
                  onSubmit: (String pin) {
                    showDialog(
                        context: context,
                        builder: (context) {
                          return AlertDialog(
                            title: Text('Pin'),
                            content: Text('Pin entered is $pin'),
                          );
                        });
                  }),
            ),
          )
        ],
      ),
    ));
  }
}
