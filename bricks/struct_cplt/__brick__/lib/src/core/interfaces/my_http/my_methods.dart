import 'my_interceptors.dart';

abstract class MyMethods {
  final interceptor = <MyInterceptors>[];

  Future<dynamic> get(
    String url,
  );

  Future<dynamic> delete(
    String url,
  );

  Future<dynamic> patch(
    String url,
  );

  Future<dynamic> post(
    String url,
  );

  Future<dynamic> put(
    String url,
  );
}
