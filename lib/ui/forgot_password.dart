import 'package:desafio_floripa/colors.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class ForgotPassword extends StatelessWidget {
  const ForgotPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 25),
      child: RichText(
        text: TextSpan(
          text: 'Esqueceu sua senha? ',
          style: const TextStyle(
            fontWeight: FontWeight.w400,
            color: Colors.black,
            fontSize: 16,
          ),
          children: [
            TextSpan(
              text: 'Recupere aqui',
              style: const TextStyle(
                fontWeight: FontWeight.w600,
                color: FloripaColor.secundaryColor,
                fontSize: 16,
              ),
              recognizer: TapGestureRecognizer()..onTap = _actionButton,
            ),
          ],
        ),
      ),
    );
  }

  void _actionButton() {}
}
