# miracle_api_client.api.TodosApi

## Load the API package
```dart
import 'package:miracle_api_client/api.dart';
```

All URIs are relative to *http://localhost:8080*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getApiTodos**](TodosApi.md#getapitodos) | **GET** /api/todos | 


# **getApiTodos**
> GetApiTodos200Response getApiTodos()



Todo 一覧を取得する

### Example
```dart
import 'package:miracle_api_client/api.dart';

final api = MiracleApiClient().getTodosApi();

try {
    final response = api.getApiTodos();
    print(response);
} catch on DioException (e) {
    print('Exception when calling TodosApi->getApiTodos: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**GetApiTodos200Response**](GetApiTodos200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

