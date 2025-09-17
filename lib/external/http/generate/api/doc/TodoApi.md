# miracle_api_client.api.TodoApi

## Load the API package
```dart
import 'package:miracle_api_client/api.dart';
```

All URIs are relative to *http://localhost:8080*

Method | HTTP request | Description
------------- | ------------- | -------------
[**deleteApiTodosByTodoId**](TodoApi.md#deleteapitodosbytodoid) | **DELETE** /api/todos/{todoId} | 
[**getApiTodosByTodoId**](TodoApi.md#getapitodosbytodoid) | **GET** /api/todos/{todoId} | 
[**postApiTodos**](TodoApi.md#postapitodos) | **POST** /api/todos | 
[**putApiTodosByTodoId**](TodoApi.md#putapitodosbytodoid) | **PUT** /api/todos/{todoId} | 


# **deleteApiTodosByTodoId**
> JsonObject deleteApiTodosByTodoId(todoId)



Todo を削除する

### Example
```dart
import 'package:miracle_api_client/api.dart';

final api = MiracleApiClient().getTodoApi();
final String todoId = todoId_example; // String | 

try {
    final response = api.deleteApiTodosByTodoId(todoId);
    print(response);
} catch on DioException (e) {
    print('Exception when calling TodoApi->deleteApiTodosByTodoId: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **todoId** | **String**|  | 

### Return type

[**JsonObject**](JsonObject.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getApiTodosByTodoId**
> GetApiTodosByTodoId200Response getApiTodosByTodoId(todoId)



Todo を取得する

### Example
```dart
import 'package:miracle_api_client/api.dart';

final api = MiracleApiClient().getTodoApi();
final String todoId = todoId_example; // String | 

try {
    final response = api.getApiTodosByTodoId(todoId);
    print(response);
} catch on DioException (e) {
    print('Exception when calling TodoApi->getApiTodosByTodoId: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **todoId** | **String**|  | 

### Return type

[**GetApiTodosByTodoId200Response**](GetApiTodosByTodoId200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **postApiTodos**
> PostApiTodos200Response postApiTodos(postApiTodosRequest)



Todo を作成する

### Example
```dart
import 'package:miracle_api_client/api.dart';

final api = MiracleApiClient().getTodoApi();
final PostApiTodosRequest postApiTodosRequest = ; // PostApiTodosRequest | 

try {
    final response = api.postApiTodos(postApiTodosRequest);
    print(response);
} catch on DioException (e) {
    print('Exception when calling TodoApi->postApiTodos: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **postApiTodosRequest** | [**PostApiTodosRequest**](PostApiTodosRequest.md)|  | [optional] 

### Return type

[**PostApiTodos200Response**](PostApiTodos200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **putApiTodosByTodoId**
> GetApiTodosByTodoId200Response putApiTodosByTodoId(todoId, postApiTodosRequest)



Todo を更新する

### Example
```dart
import 'package:miracle_api_client/api.dart';

final api = MiracleApiClient().getTodoApi();
final String todoId = todoId_example; // String | 
final PostApiTodosRequest postApiTodosRequest = ; // PostApiTodosRequest | 

try {
    final response = api.putApiTodosByTodoId(todoId, postApiTodosRequest);
    print(response);
} catch on DioException (e) {
    print('Exception when calling TodoApi->putApiTodosByTodoId: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **todoId** | **String**|  | 
 **postApiTodosRequest** | [**PostApiTodosRequest**](PostApiTodosRequest.md)|  | [optional] 

### Return type

[**GetApiTodosByTodoId200Response**](GetApiTodosByTodoId200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

