part of useridentity_api_client.api;



class OpenApi {
  final ApiClient apiClient;

  OpenApi([ApiClient apiClient]) : apiClient = apiClient ?? defaultApiClient;

  /// Login user with HTTP info returned
  ///
  /// Login user
  Future<Response> loginUserWithHttpInfo(LoginRequest loginRequest) async {
    Object postBody = loginRequest;

    // verify required params are set
    if(loginRequest == null) {
     throw ApiException(400, "Missing required param: loginRequest");
    }

    // create path and map variables
    String path = "/login".replaceAll("{format}","json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};

    List<String> contentTypes = ["application/json"];

    String nullableContentType = contentTypes.isNotEmpty ? contentTypes[0] : null;
    List<String> authNames = [];

    if(nullableContentType != null && nullableContentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = MultipartRequest(null, null);
      if(hasFields)
        postBody = mp;
    }
    else {
    }

    var response = await apiClient.invokeAPI(path,
                                             'POST',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             nullableContentType,
                                             authNames);
    return response;
  }

  /// Login user
  ///
  /// Login user
  Future<LoginUserResponse> loginUser(LoginRequest loginRequest) async {
    Response response = await loginUserWithHttpInfo(loginRequest);
    if(response.statusCode >= 400) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    } else if(response.body != null) {
      return apiClient.deserialize(_decodeBodyBytes(response), 'LoginUserResponse') as LoginUserResponse;
    } else {
      return null;
    }
  }

  /// Register user with HTTP info returned
  ///
  /// Register a new user
  Future<Response> registerUserWithHttpInfo(RegisterRequest registerRequest) async {
    Object postBody = registerRequest;

    // verify required params are set
    if(registerRequest == null) {
     throw ApiException(400, "Missing required param: registerRequest");
    }

    // create path and map variables
    String path = "/register".replaceAll("{format}","json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};

    List<String> contentTypes = ["application/json"];

    String nullableContentType = contentTypes.isNotEmpty ? contentTypes[0] : null;
    List<String> authNames = [];

    if(nullableContentType != null && nullableContentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = MultipartRequest(null, null);
      if(hasFields)
        postBody = mp;
    }
    else {
    }

    var response = await apiClient.invokeAPI(path,
                                             'POST',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             nullableContentType,
                                             authNames);
    return response;
  }

  /// Register user
  ///
  /// Register a new user
  Future<RegisterUserResponse> registerUser(RegisterRequest registerRequest) async {
    Response response = await registerUserWithHttpInfo(registerRequest);
    if(response.statusCode >= 400) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    } else if(response.body != null) {
      return apiClient.deserialize(_decodeBodyBytes(response), 'RegisterUserResponse') as RegisterUserResponse;
    } else {
      return null;
    }
  }

}
