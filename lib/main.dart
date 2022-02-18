import 'package:flutter/material.dart';
import 'package:mayfay_hackaton/pages/home_page.dart';
import 'package:mayfay_hackaton/pages/keuangan_add_page.dart';
import 'package:mayfay_hackaton/pages/keuangan_page.dart';
import 'package:mayfay_hackaton/pages/login_page.dart';
import 'package:mayfay_hackaton/pages/register_page.dart';
import 'package:mayfay_hackaton/pages/splash.dart';
// import 'package:mayfay_hackaton/pages/splash_page.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:mayfay_hackaton/widgets/bottom_navbar.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MayFay',
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => const NavBar(),
        '/splash': (context) => const Splash(),
        '/login': (context) => const LoginPage(),
        '/register': (context) => const RegisterPage(),
        '/home': (context) => const HomePage(),
        '/keuangan': (context) => const KeuanganPage(),
        '/keuangan_add': (context) => const KeuanganAddPage(),
      },
    );
  }
}
