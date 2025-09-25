// Openapi Generator last run: : 2025-09-17T12:18:29.813210
import 'package:openapi_generator_annotations/openapi_generator_annotations.dart';

@Openapi(
  additionalProperties: DioProperties(
    pubName: 'miracle_api_client',
    pubAuthor: 'Flutter Architecture Team',
    pubVersion: '1.0.0',

    // // json_serializableを使用
    // serializationLibrary: DioSerializationLibrary.jsonSerializable,
    // useEnumExtension: true,
  ),
  // ローカルのバックエンドレポジトリのパスを直接指定./../miracle/backend/openapi.yaml
  // またはローカルホストでも良い
  inputSpec: InputSpec(path: './openapi.yaml'),
  generatorName: Generator.dio,
  outputDirectory: 'lib/external/http/generate/api',
)
class ApiConfig {}
