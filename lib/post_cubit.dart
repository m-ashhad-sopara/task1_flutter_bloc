import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:task1_flutter_bloc/data_service.dart';
import 'package:task1_flutter_bloc/post.dart';

class PostCubit extends Cubit<List<Post>> {
  PostCubit() : super([]);

  final _dataService = DataService();

  void getPosts() async => emit(await _dataService.getPosts());
}
