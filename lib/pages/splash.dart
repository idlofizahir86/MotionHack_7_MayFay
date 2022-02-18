import 'package:flutter/material.dart';

class Splash extends StatelessWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(),
      // body: StreamBuilder(
      //   stream: FirebaseAuth.instance.authStateChanges(),
      //   builder: (context, snapshot) {
      //     if (snapshot.connectionState == ConnectionState.waiting) {
      //       return const Center(
      //         child: CircularProgressIndicator(),
      //       );
      //     } else if (snapshot.hasData) {
      //       return const HomePage();
      //     } else if (snapshot.hasError) {
      //       return const Center(
      //         child: Text('Something went wrong!'),
      //       );
      //     } else {
      //       return const RegisterPage();
      //     }
      //   },
      // ),
    );
  }
}
