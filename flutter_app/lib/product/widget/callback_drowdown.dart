import 'package:flutter/material.dart';

import '../../Level_3/part/call_back_learn.dart';

class CallBackDropdown extends StatefulWidget {
  const CallBackDropdown({super.key, required this.onUserSelected});

  final void Function(CallbackUser user) onUserSelected;
  @override
  State<CallBackDropdown> createState() => _CallBackDropdownState();
}

class _CallBackDropdownState extends State<CallBackDropdown> {
  CallbackUser? _user;

  void _updateUser(CallbackUser? item) {
    setState(() {
      _user = item;
    });
    if (_user != null) {
      widget.onUserSelected.call(_user!);
    }
  }

  @override
  Widget build(BuildContext context) {
    return DropdownButton<CallbackUser>(
        value: _user,
        items: CallbackUser.dummyUser().map((e) {
          return DropdownMenuItem(
            child:
                Text(e.name, style: Theme.of(context).textTheme.headlineMedium),
            value: e,
          );
        }).toList(),
        onChanged: _updateUser);
  }
}
