import 'package:desafio_floripa/mobX/login/controller_password_view_store.dart';
import 'package:desafio_floripa/widget/widget_form_field_defaut.dart';
import 'package:email_validator/email_validator.dart';
import 'package:feather_icons/feather_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:provider/provider.dart';

class FormFieldLogin extends StatelessWidget {
  const FormFieldLogin({super.key});

  @override
  Widget build(BuildContext context) {
    final controllerPassword =
        Provider.of<ControllerPasswordViewStore>(context, listen: false);
    return Column(
      children: [
        WidgetFormFieldDefaut(
          prefixIcon: FeatherIcons.mail,
          hintText: 'E-mail',
          textInputType: TextInputType.emailAddress,
          validator: (value) {
            final isValid = EmailValidator.validate(value ?? '');
            if (value?.isEmpty ?? true) {
              return 'É obrigatorio informar o email';
            } else if (!isValid) {
              return 'E-mail informado é invalido';
            }
            return null;
          },
        ),
        Padding(
          padding: const EdgeInsets.only(top: 20),
          child: Observer(
            builder: (_) {
              return WidgetFormFieldDefaut(
                prefixIcon: FeatherIcons.lock,
                hintText: 'Senha',
                textInputType: TextInputType.visiblePassword,
                suffixIconVisibility: FeatherIcons.eyeOff,
                suffixIconVisibilityOff: FeatherIcons.eye,
                textInputAction: TextInputAction.done,
                isObscureText: controllerPassword.isNotVisblePassword,
                actionObscureText: controllerPassword.changeVisblePassword,
                validator: (value) {
                  if (value?.isEmpty ?? true) {
                    return 'É obrigatorio informar a senha';
                  }
                  return null;
                },
              );
            },
          ),
        ),
      ],
    );
  }
}
