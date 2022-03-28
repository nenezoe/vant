import 'package:flutter/material.dart';
import 'package:local_auth/local_auth.dart';
import 'package:vant/constants.dart';
import 'package:vant/screens/login_screen.dart';
import 'package:vant/screens/registration_screen.dart';
import 'package:vant/widgets/build_card.dart';
import 'package:vant/widgets/card_item.dart';
import 'package:vant/widgets/fingerprint_auth.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  final LocalAuthentication localAuth = LocalAuthentication();

  // List<CardItem> items = [
  //   CardItem(
  //     urlImage: 'assets/bank_transfer.jpg',
  //     title: "Withdraw to bank",
  //   ),
  //   CardItem(
  //     urlImage: 'assets/share_payment.jpg',
  //     title: "Withdraw to bank",
  //   ),
  //   CardItem(
  //     urlImage: 'assets/investment.jpg',
  //     title: "Withdraw to bank",
  //   ),
  // ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffd8f4ec),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(32.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text('Welcome to', style: kWelcomeText),
                Text(
                  'Vant',
                  style: kVantText,
                ),
                SizedBox(
                  height: 20,
                ),
                Text('Better Savings faster loan more rewards',
                    style: kTextSub),
                Container(
                  height: 120,
                  child: ListView.separated(
                      padding: EdgeInsets.all(8),
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) => buildCard(items[index]),
                      separatorBuilder: (context, _) => SizedBox(
                          // width: 1,
                          ),
                      itemCount: items.length),
                ),
                SizedBox(
                  height: 200,
                ),
                Row(
                  children: [
                    Expanded(
                      flex: 2,
                      child: MaterialButton(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        // minWidth: double.maxFinite, // set minWidth to maxFinite
                        color: Color(0xff1E6355),
                        onPressed: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => LoginScreen()));
                        },
                        child: Text(
                          "Login",
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: MaterialButton(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        // minWidth: double.maxFinite, // set minWidth to maxFinite
                        color: Color(0xff3BC6AA),
                        onPressed: () async {
                          bool weCanCheckBiometrics =
                              await localAuth.canCheckBiometrics;

                          if (weCanCheckBiometrics) {
                            bool authenticated =
                                await localAuth.authenticateWithBiometrics(
                                    localizedReason:
                                        'Authenticate to see your bank statement');
                            if (authenticated) {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => LoginScreen()));
                            }
                          }
                          // Navigator.of(context).push(MaterialPageRoute(
                          //     builder: (context) => WelcomeScreen()));
                        },
                        child: Icon(
                          Icons.fingerprint,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
                MaterialButton(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  minWidth: double.maxFinite, // set minWidth to maxFinite
                  color: Color(0xff1E6355),
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => RegistrationScreen()));
                  },
                  child: Text(
                    "Registration",
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  // Widget buildAuthenticate(BuildContext context) => buildButton(
  //   text: 'Authenticate',
  //   Icon: Icons.lock_open,
  //   onClicked: () async {
  //     final isAuthenticated = await LocalAuthApi.authenticate();
  //     if (isAuthenticated) {
  //       Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => HomePage()));
  //     }
  //   }
  // );
//
//   Widget buildButton({
//   required String text,
//     required  IconData Icon,
//     required VoidCallback onClicked
// }) =>

  //     Widget buildText (String text, bool checked) => Container(
  //   margin: EdgeInsets.symmetric(vertical: 8),
  //   child: Row(
  //     children: [
  //       checked
  //       ? Icon(Icons.check, color: )
  //     ],
  //   ),
  // )
}
