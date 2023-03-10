import 'package:flutter/material.dart';
import 'package:flutter_app/Level_2/model_learn.dart';
import 'package:flutter_app/Level_2/service/post_service.dart';
import 'package:flutter_app/Level_2/service/post_model.dart';

class FeedView extends StatefulWidget {
  const FeedView({super.key});

  @override
  State<FeedView> createState() => _FeedViewState();
}

class _FeedViewState extends State<FeedView>
    with AutomaticKeepAliveClientMixin {
  final IPostService _postService = PostService();
  late final Future<List<NewModels>?> _itemsFuture;
  @override
  void initState() {
    super.initState();
    _itemsFuture = _postService.fetchPostItemsAdvance();
  }

  Widget build(BuildContext context) {
    super.build(context);
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.startTop,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {});
        },
      ),
      appBar: AppBar(),
      body: FutureBuilder<List<NewModels>?>(
          future: _itemsFuture,
          builder:
              (BuildContext context, AsyncSnapshot<List<NewModels>?> snapshot) {
            switch (snapshot.connectionState) {
              case ConnectionState.none:
                return const Placeholder();

              case ConnectionState.waiting:
              case ConnectionState.active:
                return const Center(child: CircularProgressIndicator());

              case ConnectionState.done:
                if (snapshot.hasData) {
                  return ListView.builder(
                      itemCount: snapshot.data?.length ?? 0,
                      itemBuilder: (BuildContext context, int index) {
                        return Card(
                          child: ListTile(
                              title: Text(snapshot.data?[index].body ?? '')),
                        );
                      });
                } else {
                  return Center(
                    child: Container(
                      color: Colors.red,
                      width: 100,
                      height: 100,
                    ),
                  );
                }
            }
          }),
    );
  }

  @override
  // TODO: implement wantKeepAlive
  bool get wantKeepAlive => true;
}
