import 'package:flutter/material.dart';

class FormLearnView extends StatefulWidget {
  const FormLearnView({super.key});

  @override
  State<FormLearnView> createState() => _FormLearnViewState();
}

class _FormLearnViewState extends State<FormLearnView> {
  GlobalKey<FormState> _key = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Form(
        key: _key,
        autovalidateMode: AutovalidateMode.always,
        onChanged: () {
          print('abcd');
        },
        child: Column(
          children: [
            TextFormField(
              validator: (value) {
                return (value?.isNotEmpty ?? false)
                    ? null
                    : 'Bu Alan Bos Gecilemez';
              },
            ),
            TextFormField(validator: FormFieldValitator().isNotEmpty),
            ElevatedButton(
                onPressed: () {
                  if (_key.currentState?.validate() ?? false) {
                    print('okey');
                  }
                },
                child: Text('Save')),
          ],
        ),
      ),
    );
  }
}

class FormFieldValitator {
  String? isNotEmpty(String? data) {
    return (data?.isNotEmpty ?? false) ? null : 'Bos Gecilemez';
  }
}
