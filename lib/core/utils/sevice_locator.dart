import 'package:bookly/core/utils/api_service.dart';
import 'package:bookly/features/book%20feature/data/repositry/book_repo_impl.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

void setUpServiceLocator() {
  getIt.registerSingleton<ApiService>(ApiService(Dio()));
  getIt.registerSingleton<BookRepoImpl>(
    BookRepoImpl(getIt.get<ApiService>()),
  );
}
