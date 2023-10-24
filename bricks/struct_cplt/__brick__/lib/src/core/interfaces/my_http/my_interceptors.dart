abstract class MyInterceptors<TRequest, TResponse, TError> {
  Future<TRequest> onRequest(TRequest request);
  Future<TResponse> onResponse(TResponse response);
  Future<TError> onError(TError error);
}
