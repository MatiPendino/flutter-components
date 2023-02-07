import 'package:flutter/material.dart';

class CustomInputField extends StatelessWidget {
  
  final String? hintText, labelText, helperText;
  final IconData? suffixIcon, icon;
  final TextInputType? keyboardType;
  final bool? obscureText;

  final dynamic formProperty;
  final Map<String, dynamic> formValues;
  
  const CustomInputField({
    Key? key, 
    this.hintText, 
    this.labelText, 
    this.helperText, 
    this.suffixIcon, 
    this.icon, 
    this.keyboardType, 
    this.obscureText, 
    required this.formProperty, 
    required this.formValues,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      autofocus: true,
      keyboardType: keyboardType ?? TextInputType.text,
      textCapitalization: TextCapitalization.words,
      obscureText: obscureText ?? false,
      onChanged: (value) {
        formValues[formProperty] = value;
      },
      validator: (value) {
        if (value == null) return "Este campo es requerido";
        return value.length < 3 ? "Mínimo de 3 caracteres" : null;
      },
      autovalidateMode: AutovalidateMode.onUserInteraction,
      decoration: InputDecoration(
        hintText: hintText ?? "",
        labelText: labelText ?? "",
        helperText: helperText ?? "",
        // counterText: "3 caracteres",
        suffixIcon: suffixIcon != null ? Icon(suffixIcon) : null,
        // prefixIcon: Icon(Icons.verified_outlined),
        icon: icon != null ? Icon(icon) : null,
        /*focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.green
          )
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.only(bottomLeft: Radius.circular(10))
        )*/
      ),
    );
  }
}