import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mayfay_hackaton/cubit/auth_cubit.dart';
import 'package:mayfay_hackaton/cubit/keuangan_cubit.dart';
import 'package:mayfay_hackaton/pages/home_page.dart';
import 'package:mayfay_hackaton/pages/keuangan_add_page.dart';
import 'package:mayfay_hackaton/pages/keuangan_page.dart';
import 'package:mayfay_hackaton/pages/login_page.dart';
import 'package:mayfay_hackaton/pages/news_page.dart';
import 'package:mayfay_hackaton/pages/profile_page.dart';
import 'package:mayfay_hackaton/pages/register_page.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:mayfay_hackaton/pages/splash_page.dart';
import 'package:mayfay_hackaton/pages/todolist_add_page.dart';
import 'package:mayfay_hackaton/pages/todolist_page.dart';
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
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => AuthCubit(),
        ),
        BlocProvider(
          create: (context) => KeuanganCubit(),
        ),
      ],
      child: MaterialApp(
        title: 'MayFay',
        debugShowCheckedModeBanner: false,
        routes: {
          '/': (context) => const SplashPage(),
          '/navbar': (context) => NavBar(),
          '/login': (context) => LoginPage(),
          '/register': (context) => RegisterPage(),
          '/home': (context) => const HomePage(),
          '/todolist': (context) => const TodoListPage(),
          '/todolist_add': (context) => const TodoListAddPage(),
          '/keuangan': (context) => const KeuanganPage(),
          '/keuangan_add': (context) => const KeuanganAddPage(),
          '/news': (context) => const NewsPage(),
          '/profile': (context) => const ProfilePage(),
        },
      ),
    );
  }
}
