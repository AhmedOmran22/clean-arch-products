abstract class ApiService {
  Future<dynamic> get(
    String path, {
    Map<String, dynamic>? queryParameters,
    Map<String, dynamic>? headers,
  });

  Future<dynamic> post(
    String path, {
    required Map<String, dynamic> data,
    Map<String, dynamic>? queryParameters,
    Map<String, dynamic>? headers,
    bool isFormData = false,
  });

  Future<dynamic> patch(
    String path, {
    required Map<String, dynamic> data,
    Map<String, dynamic>? queryParameters,
    Map<String, dynamic>? headers,
    bool isFormData = false,
  });

  Future<dynamic> delete(
    String path, {
    Object? data,
    Map<String, dynamic>? queryParameters,
    Map<String, dynamic>? headers,
    bool isFormData = false,
  });
}
 //  1234 
 //  1234