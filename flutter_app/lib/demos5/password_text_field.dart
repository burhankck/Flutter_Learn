import 'package:flutter/material.dart';

class PasswordTextField extends StatefulWidget {
  const PasswordTextField({super.key, required this.controller});
  final TextEditingController?  controller;
  @override
  State<PasswordTextField> createState() => _PasswordTextFieldState();
}

class _PasswordTextFieldState extends State<PasswordTextField> {
  bool _isSecure = true;

  void _changeLoading() {
    setState(() {
      _isSecure = !_isSecure;
    });
  }

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: widget.controller,
      autofillHints: [AutofillHints.telephoneNumber],
      keyboardType: TextInputType.visiblePassword,
      obscureText: _isSecure,
      obscuringCharacter: '#',
      decoration: InputDecoration(
          border: UnderlineInputBorder(),
          hintText: 'Password',
          suffix: _onVisibilityIcon(),
                  ),
    );
  }

  IconButton _onVisibilityIcon() {
    return IconButton(
            onPressed: () {
              _changeLoading();
            },
            icon: Icon(_isSecure
                ? Icons.visibility_outlined
                : Icons.visibility_off));
  }
}
