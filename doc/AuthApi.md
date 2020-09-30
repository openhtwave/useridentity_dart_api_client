# useridentity_api_client.api.AuthApi

## Load the API package
```dart
import 'package:useridentity_api_client/api.dart';
```

All URIs are relative to *http://localhost:6969*

Method | HTTP request | Description
------------- | ------------- | -------------
[**loginUser**](AuthApi.md#loginUser) | **POST** /login | Login user
[**registerUser**](AuthApi.md#registerUser) | **POST** /register | Register user


# **loginUser**
> LoginUserResponse loginUser(loginRequest)

Login user

Login user

### Example 
```dart
import 'package:useridentity_api_client/api.dart';

var api_instance = AuthApi();
var loginRequest = LoginRequest(); // LoginRequest | 

try { 
    var result = api_instance.loginUser(loginRequest);
    print(result);
} catch (e) {
    print("Exception when calling AuthApi->loginUser: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **loginRequest** | [**LoginRequest**](LoginRequest.md)|  | 

### Return type

[**LoginUserResponse**](LoginUserResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **registerUser**
> RegisterUserResponse registerUser(registerRequest)

Register user

Register a new user

### Example 
```dart
import 'package:useridentity_api_client/api.dart';

var api_instance = AuthApi();
var registerRequest = RegisterRequest(); // RegisterRequest | 

try { 
    var result = api_instance.registerUser(registerRequest);
    print(result);
} catch (e) {
    print("Exception when calling AuthApi->registerUser: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **registerRequest** | [**RegisterRequest**](RegisterRequest.md)|  | 

### Return type

[**RegisterUserResponse**](RegisterUserResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

