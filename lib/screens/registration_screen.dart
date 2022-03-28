import 'package:flutter/material.dart';
import 'package:local_auth/local_auth.dart';
import 'package:vant/constants.dart';
import 'package:vant/screens/home_screen.dart';
import 'package:vant/widgets/build_card.dart';
import 'package:vant/widgets/card_item.dart';

class RegistrationScreen extends StatefulWidget {
  const RegistrationScreen({Key? key}) : super(key: key);

  @override
  _RegistrationScreenState createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {
  final LocalAuthentication localAuth = LocalAuthentication();

  late bool _passwordVisible;

  @override
  void initState() {
    _passwordVisible = false;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                      itemBuilder: (context, index) => buildCard(items[index]),
                      separatorBuilder: (context, _) => SizedBox(
                            width: 1,
                          ),
                      itemCount: items.length),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  'Create an Account',
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Color(0xff1E6355),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                TextField(
                  onChanged: (value) {
                    // eventDate = value;
                  },
                  decoration: kTextFieldDecoration.copyWith(
                    prefixIcon: Icon(
                      Icons.person,
                      color: Color(0xff3BC6AA),
                    ),
                    hintText: "Johnson Doe",
                  ),
                ),
                SizedBox(
                  height: 10,
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
                  height: 10,
                ),
                TextField(
                  onChanged: (value) {
                    // eventDate = value;
                  },
                  decoration: kTextFieldDecoration.copyWith(
                    prefixIcon: Icon(
                      Icons.phone,
                      color: Color(0xff3BC6AA),
                    ),
                    hintText: "Phone Number",
                  ),
                ),
                SizedBox(
                  height: 25,
                ),
                MaterialButton(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  minWidth: double.maxFinite, // set minWidth to maxFinite
                  color: Color(0xff1E6355),
                  onPressed: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => HomeScreen()));
                  },
                  child: Text(
                    "Register",
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Already have an account ?'),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      'Login',
                      style: TextStyle(
                        color: Color(0xff1E6355),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
