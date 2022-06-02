import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:task1_flutter_bloc/post_cubit.dart';

import 'post.dart';

class PostView extends StatelessWidget {
  const PostView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Posts'),
        ),
        body: BlocBuilder<PostCubit, List<Post>>(
          builder: (_, posts) {
            if (posts.isEmpty) {
              return const Center(child: CircularProgressIndicator());
            }

            return ListView.builder(itemCount: posts.length,itemBuilder: (_, index) {
              return Card(
                child: ListTile(
                  title: Text(posts[index].title),
                ),
              );
            });
          },
        ));
  }
}
