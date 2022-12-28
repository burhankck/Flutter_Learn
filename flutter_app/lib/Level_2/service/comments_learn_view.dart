import 'package:flutter/material.dart';
import 'package:flutter_app/Level_2/service/comment_model.dart';
import 'package:flutter_app/Level_2/service/post_service.dart';

class CommentsLearnView extends StatefulWidget {
  const CommentsLearnView({super.key, this.postId});
  final int? postId;

  @override
  State<CommentsLearnView> createState() => _CommentsLearnViewState();
}

class _CommentsLearnViewState extends State<CommentsLearnView> {
  late final IPostService postService;
  bool _isLoading = true;
  List<CommentModel>? _commentsItem;

  @override
  void initState() {
    super.initState();
    postService = PostService();
    fetchItemWithId(widget.postId ?? 0);
  }

  void _changeLoading() {
    setState(() {
      _isLoading = !_isLoading;
    });
  }

  Future<void> fetchItemWithId(int postId) async {
   
    _commentsItem = await postService.fetchRelatedCommentsWithPostId(postId);
   
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView.builder(
        itemCount: _commentsItem?.length ?? 0,
        itemBuilder: (context, index) {
          return Card(
            child: Text(_commentsItem?[index].email ?? ''),
          );
        },
      ),
    );
  }
}
