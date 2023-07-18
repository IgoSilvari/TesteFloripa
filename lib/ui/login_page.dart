import 'package:desafio_floripa/ui/forgot_password.dart';
import 'package:desafio_floripa/ui/form_field_login.dart';
import 'package:desafio_floripa/ui/logo_flutter_and_welcome.dart';
import 'package:desafio_floripa/widget/background_gradient.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BackgroundGradient(
        child: SingleChildScrollView(
          child: ConstrainedBox(
            constraints: BoxConstraints(
              minHeight: MediaQuery.sizeOf(context).height,
              maxWidth: MediaQuery.sizeOf(context).width,
              minWidth: MediaQuery.sizeOf(context).width,
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  const SizedBox(height: 5),
                  const LogoFlutterAndWelcome(),
                  const FormFieldLogin(),
                  Column(
                    children: [
                      ElevatedButton(
                        onPressed: () {},
                        child: const Text('ENTRAR'),
                      ),
                      const ForgotPassword(),
                    ],
                  ),
                  const SizedBox(height: 5)
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
