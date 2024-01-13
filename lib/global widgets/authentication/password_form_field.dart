
import 'package:flutter/material.dart';

class PasswordFormField extends StatelessWidget {
  final bool? obscure;
  final String? title;
  final String? initial;
  final Widget? trailing;
  final String? Function(String?)? onValidate;
  final Function()? onClickShow;
  final Function(String?)? onChange;

  const PasswordFormField({
    Key ?key,
    this.obscure  = true,
    required this.title,
    required this.onValidate,
    this.onClickShow,
    required this.onChange,
    this.trailing,
    this.initial
  })
      : assert(obscure != null),
        super(key: key);


  @override
  Widget build(BuildContext context) {
    return Container(
      height: 65.0,
      width: double.infinity,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          color: const Color.fromRGBO(252, 252, 252, 0.95),
          boxShadow: const [
            BoxShadow(
                spreadRadius: 1.0,
                blurRadius: 1.0,
                color: Color(0xFFd0dFdf),
                offset: Offset(1.0, 2.0)
            )
          ]
      ),
      padding: const EdgeInsets.symmetric(
        vertical: 7.0,
        horizontal: 8.0
      ),
      child: TextFormField(
        initialValue: initial,
        obscureText:obscure!,
        obscuringCharacter: "*",
        cursorColor: Colors.grey.shade800,
        style: TextStyle(
            color:Colors.grey.shade800,
            fontSize: 18.0,
            fontFamily: 'Poppins'
        ),
        decoration: InputDecoration(
          border: InputBorder.none,
          hintText: title,
          hintStyle: TextStyle(
              color: Colors.grey.shade400,
              fontFamily: 'Poppins'
          ),
          icon: Icon(Icons.lock, color: Theme.of(context).primaryColor, ),
          errorStyle: TextStyle(color: Theme.of(context).primaryColor),
          suffixIcon: trailing ??  const Icon(Icons.close,
            color: Color.fromRGBO(252, 252, 252, 0.95),
            size: 0.0,
          ),
        ),
        validator: onValidate!,
        onChanged: onChange!,
      ),
    );
  }
}
