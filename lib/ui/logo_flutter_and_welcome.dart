import 'package:flutter/material.dart';

class LogoFlutterAndWelcome extends StatelessWidget {
  const LogoFlutterAndWelcome({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(
          'assets/images/logo-icon.png',
          height: MediaQuery.sizeOf(context).height * .13,
        ),
        const Padding(
          padding: EdgeInsets.symmetric(vertical: 15),
          child: Text(
            'Bem-Vindo\n ao FlutterFloripa!',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 32,
            ),
          ),
        ),
        const Text(
          'A comunidade oficial Flutter em\n Florianópolis-SC',
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w300
          ),
        ),
      ],
    );
  }
}
