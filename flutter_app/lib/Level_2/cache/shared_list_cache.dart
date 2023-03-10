import 'package:flutter/material.dart';
import 'package:flutter_app/Level_2/cache/shared_learn_cache.dart';
import 'package:flutter_app/Level_2/cache/shared_manager.dart';
import 'package:flutter_app/Level_2/cache/user_cache/user_cache_manager.dart';
import 'package:flutter_app/Level_2/cache/user_model.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SharedListCache extends StatefulWidget {
  const SharedListCache({super.key});

  @override
  State<SharedListCache> createState() => _SharedListCacheState();
}

class _SharedListCacheState extends LoadingStatefull<SharedListCache> {
  late final UserCacheManager userCacheManager;
  List<User> _users = UserItems().users;
  @override
  void initState() {
    super.initState();
    initilazeAndSave();
  }

  Future<void> initilazeAndSave() async {
    changeLoading();
    final SharedManager manager = SharedManager();
    await manager.init();
    userCacheManager = UserCacheManager(manager);
    changeLoading();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: isLoading
            ? const CircularProgressIndicator(
                color: Colors.white,
              )
            : null,
        actions: [
          IconButton(
              onPressed: () async {
                changeLoading();
                await userCacheManager.saveItems(_users);
                changeLoading();
              },
              icon: Icon(Icons.download_for_offline_outlined)),
          IconButton(onPressed: () {}, icon: Icon(Icons.remove_circle_outline)),
        ],
      ),
      body: _userListView(users: _users),
    );
  }
}

class _userListView extends StatelessWidget {
  _userListView({
    super.key,
    required this.users,
  });
  final List<User> users;
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: users.length,
      itemBuilder: (context, index) {
        return Card(
          child: ListTile(
            title: Text(users[index].name ?? ''),
            subtitle: Text(users[index].number ?? ''),
            trailing: Text(
              users[index].url ?? '',
              style: Theme.of(context)
                  .textTheme
                  .titleMedium
                  ?.copyWith(decoration: TextDecoration.underline),
            ),
          ),
        );
      },
    );
  }
}
