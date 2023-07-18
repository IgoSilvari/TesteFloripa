import 'package:flutter/material.dart'; 

class WidgetFormFieldDefaut extends StatelessWidget {
  const WidgetFormFieldDefaut({
    required this.hintText,
    required this.textInputType,
    required this.validator,
    this.textInputAction = TextInputAction.next, 
    this.isObscureText = false,
    this.actionObscureText,
    this.suffixIconVisibility,
    this.suffixIconVisibilityOff, 
    this.prefixIcon,
    super.key,
  });
  
  final String hintText;
  final IconData? suffixIconVisibility;
  final IconData? suffixIconVisibilityOff;
  final TextInputType textInputType;
  final TextInputAction? textInputAction; 
  final String? Function(String?)? validator;
  final bool isObscureText;
  final void Function()? actionObscureText; 
  final IconData? prefixIcon;

  @override
  Widget build(BuildContext context) {
    return TextFormField( 
      decoration: InputDecoration(
        hintText: hintText,         
        prefixIcon: Icon(prefixIcon),
        suffixIcon: Visibility(
          visible: actionObscureText != null,
          child: IconButton(
            onPressed: actionObscureText,
            icon: isObscureText
                ? Icon(suffixIconVisibility)
                : Icon(suffixIconVisibilityOff),
          ),
        ),
      ),
      keyboardType: textInputType,
      textInputAction: textInputAction,
      validator: validator,
      obscureText: isObscureText,
    );
  }
}
