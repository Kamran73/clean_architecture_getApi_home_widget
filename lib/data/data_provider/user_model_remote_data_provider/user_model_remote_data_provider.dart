import 'package:dio/dio.dart';
import 'package:retrofit/http.dart';

import '../../models/page_model/page_model.dart';

part 'user_model_remote_data_provider.g.dart';

@RestApi(baseUrl: "https://reqres.in/api/")
abstract class UserModelRemoteDataProvider {
  factory UserModelRemoteDataProvider(Dio dio) = _UserModelRemoteDataProvider;

  @GET("users")
  Future<PageModel> getUser();
}
