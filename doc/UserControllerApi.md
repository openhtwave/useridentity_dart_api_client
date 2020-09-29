# useridentity_api_client.api.UserControllerApi

## Load the API package
```dart
import 'package:useridentity_api_client/api.dart';
```

All URIs are relative to *http://localhost:6969*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getUser**](UserControllerApi.md#getUser) | **POST** /users/{id} | 


# **getUser**
> UserResponse getUser(id)



### Example 
```dart
import 'package:useridentity_api_client/api.dart';

var api_instance = UserControllerApi();
var id = id_example; // String | 

try { 
    var result = api_instance.getUser(id);
    print(result);
} catch (e) {
    print("Exception when calling UserControllerApi->getUser: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | [default to null]

### Return type

[**UserResponse**](UserResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

