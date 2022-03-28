import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:local_auth/local_auth.dart';
import 'package:vant/constants.dart';
import 'package:vant/screens/home_screen.dart';
import 'package:vant/widgets/build_card.dart';
import 'package:vant/widgets/card_item.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final LocalAuthentication localAuth = LocalAuthentication();

  late bool _passwordVisible;

  @override
  void initState() {
    _passwordVisible = false;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xffd8f4ec),
        body: SingleChildScrollView(
          child: SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Container(
                    height: 130,
                    child: ListView.separated(
                        padding: EdgeInsets.all(16),
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) =>
                            buildCard(items[index]),
                        separatorBuilder: (context, _) => SizedBox(
                              width: 1,
                            ),
                        itemCount: items.length),
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  Text(
                    'Login',
                    style: TextStyle(
                        color: Color(0xff1E6355),
                        fontSize: 30,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  TextField(
                    onChanged: (value) {
                      // eventDate = value;
                    },
                    decoration: kTextFieldDecoration.copyWith(
                      prefixIcon: Icon(
                        Icons.email,
                        color: Color(0xff3BC6AA),
                      ),
                      hintText: "johnsondoe@nomali.com",
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  TextField(
                    obscureText: !_passwordVisible,
                    onChanged: (value) {
                      // eventDate = value;
                    },
                    decoration: kTextFieldDecoration.copyWith(
                      prefixIcon: Icon(
                        Icons.lock,
                        color: Colors.grey,
                      ),
                      suffixIcon: IconButton(
                        onPressed: () {
                          setState(() {
                            _passwordVisible = !_passwordVisible;
                          });
                        },
                        icon: Icon(
                          _passwordVisible
                              ? Icons.visibility
                              : Icons.visibility_off,
                          color: Colors.grey,
                        ),
                      ),
                      hintText: "************m",
                    ),
                  ),
                  SizedBox(
                    height: 30,
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
                                builder: (context) => HomeScreen()));
                          },
                          child: Text(
                            "Login",
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20,
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
                  SizedBox(
                    height: 20,
                  ),
                  Center(
                    child: Text(
                      'Forget Password',
                      style: TextStyle(
                        fontSize: 20,
                        color: Color(0xff3BC6AA),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Don't have account? "),
                      Text(
                        'Register',
                        style: TextStyle(color: Color(0xff3BC6AA)),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ));
  }
}
