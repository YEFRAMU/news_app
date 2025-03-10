import 'package:dio/dio.dart';

abstract class DataState<T> {
  final T ? data;
  final DioException ? error;

  // final DioError ? error;

  const DataState({this.data, this.error});
}

//when sucessful response
class DataSuccess<T> extends DataState<T> {
  const DataSuccess(T data) : super(data: data);
}
//when failed response
class DataFailed<T> extends DataState<T> {
  const DataFailed(DioException error) : super(error: error);
}