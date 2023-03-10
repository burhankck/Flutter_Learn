import 'package:flutter/material.dart';
import 'package:flutter_app/product/widget/button/answer_button.dart';
import 'package:flutter_app/product/widget/button/loading_button.dart';
import 'package:flutter_app/product/widget/callback_drowdown.dart';

class CallBackLearn extends StatefulWidget {
  const CallBackLearn({super.key});

  @override
  State<CallBackLearn> createState() => _CallBackLearnState();
}

class _CallBackLearnState extends State<CallBackLearn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          children: [
            CallBackDropdown(
              onUserSelected: (CallbackUser user) {
                print(user);
              },
            ),
            AnswerButton(
              onNumber: (number) {
                return number % 3 == 1;
              },
            ),
            LoadingButton(
              title: 'Save',
              callback: () async {
                await Future.delayed(const Duration(seconds: 1));
              },
            )
          ],
        ),
      ),
    );
  }
}

class CallbackUser {
  final String name;
  final int id;

  CallbackUser(this.name, this.id);

  // TODO Dummy Remove it
  static List<CallbackUser> dummyUser() {
    return [
      CallbackUser('Burhan', 123),
      CallbackUser('Ali', 124),
    ];
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is CallbackUser && other.name == name && other.id == id;
  }

  @override
  int get hashCode => name.hashCode ^ id.hashCode;
}
