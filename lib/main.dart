import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:task1_flutter_bloc/post_cubit.dart';
import 'package:task1_flutter_bloc/post_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: BlocProvider<PostCubit>(
      create: (context) => PostCubit()..getPosts(),
      child: const PostView(),
    ));
  }
}
