import 'package:flutter/material.dart';
import 'package:flutter_app/Level_2/cache/shared_manager.dart';
import 'package:flutter_app/Level_2/cache/user_model.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SharedLearn extends StatefulWidget {
  const SharedLearn({super.key});

  @override
  State<SharedLearn> createState() => _SharedLearnState();
}

class _SharedLearnState extends LoadingStatefull<SharedLearn> {
  int _currentValue = 0;
  late final SharedManager _manager;
  late final List<User> userItems;
  @override
  void initState() {
    super.initState();
    _manager = SharedManager();
    userItems = UserItems().users;
    _initialze();
  }

  Future<void> _initialze() async {
    changeLoading();
    await _manager.init();
    changeLoading();
    getDefaultValue();
  }

  Future<void> getDefaultValue() async {
    // final prefs = await SharedPreferences.getInstance();
    // final int? counter = prefs.getInt('counter');
    _onChangeValue(_manager.getString(SharedKeys.counter) ?? '');
  }

  void _onChangeValue(String value) {
    final _value = int.tryParse(value);
    if (_value != null) {
      setState(() {
        _currentValue = _value;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          isLoading
              ? Center(
                  child: CircularProgressIndicator(
                      color: Theme.of(context).scaffoldBackgroundColor))
              : const SizedBox.shrink(),
        ],
        title: Center(child: Text(_currentValue.toString())),
      ),
      floatingActionButton: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          saveButton(),
          removeButton(),
        ],
      ),
      body: Column(
        children: [
          TextField(
            onChanged: (value) {
              _onChangeValue(value);
            },
          ),
        ],
      ),
    );
  }

  removeButton() {
    return FloatingActionButton(
      child: const Icon(Icons.remove),
      onPressed: () async {
        changeLoading();
        _manager.removeItem(SharedKeys.counter);
        changeLoading();
        // final prefs = await SharedPreferences.getInstance();
        // await prefs.remove('counter');
      },
    );
  }

  saveButton() {
    return FloatingActionButton(
      child: const Icon(Icons.save),
      onPressed: () async {
        changeLoading();
        _manager.saveString(SharedKeys.counter, _currentValue.toString());
        changeLoading();
        // final prefs = await SharedPreferences.getInstance();
        // await prefs.setInt('counter', _currentValue);
      },
    );
  }
}



class UserItems {
  late final List<User> users;
  UserItems() {
    users = [
      User('Burhan', '1', 'pub.dev'),
      User('Ali', '2', 'pub.dev'),
      User('Veli', '3', 'pub.dev'),
    ];
  }
}

abstract class LoadingStatefull<T extends StatefulWidget> extends State<T> {
  bool isLoading = false;

  void changeLoading() {
    isLoading = !isLoading;
  }
}
