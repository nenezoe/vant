import 'package:flutter/material.dart';
import 'package:vant/constants.dart';
import 'package:vant/screens/welcome_screen.dart';
import 'package:vant/widgets/card_item.dart';

class SecondScreen extends StatelessWidget {
  const SecondScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffd8f4ec),
      body: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(100.0),
            child: Image.asset('assets/Group1.jpg'),
          ),
          SizedBox(
            height: 30,
          ),
          Text(
            'Box Savings',
            style: kHeadingText,
          ),
          SizedBox(height: 20),
          Text('want your friends and family to'),
          Text('help you save,share them your'),
          Text('saving link '),
          SizedBox(height: 80),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: MaterialButton(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
              minWidth: double.maxFinite, // set minWidth to maxFinite
              color: Color(0xff0C2822),
              onPressed: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => WelcomeScreen()));
              },
              child: Text(
                "Get Started",
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
