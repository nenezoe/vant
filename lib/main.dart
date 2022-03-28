import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:vant/screens/Splash_screen.dart';

main() {
  // WidgetsFlutterBinding.ensureInitialized();
  // await SystemChrome.setPreferredOrientations({
  // DeviceOrientation.portraitUp,
  // DeviceOrientation.portraitDown,
  // });
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      color: Color(0xffd8f4ec),
      home: SplashScreen(),
    );
  }
}
