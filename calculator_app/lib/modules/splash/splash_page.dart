import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder(
        future: Future.delayed(const Duration(seconds: 2), () => ''),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            Modular.to.navigate('/home');
          }
          return Container(
            decoration: const BoxDecoration(color: Color.fromARGB(255, 52, 0, 97)),
            child: Center(
              child: Image.asset('assets/images/logo.png'),
            ),
          );
        },
      ),
    );
  }
}
