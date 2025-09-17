# miracle_api_client.api.DefaultApi

## Load the API package
```dart
import 'package:miracle_api_client/api.dart';
```

All URIs are relative to *http://localhost:8080*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getIndex**](DefaultApi.md#getindex) | **GET** / | アプリケーションの疎通確認用のハンドラ


# **getIndex**
> GetIndex200Response getIndex()

アプリケーションの疎通確認用のハンドラ

### Example
```dart
import 'package:miracle_api_client/api.dart';

final api = MiracleApiClient().getDefaultApi();

try {
    final response = api.getIndex();
    print(response);
} catch on DioException (e) {
    print('Exception when calling DefaultApi->getIndex: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**GetIndex200Response**](GetIndex200Response.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

