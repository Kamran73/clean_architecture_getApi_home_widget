import 'package:dio/dio.dart';
import 'package:retrofit/http.dart';

import '../../../helper/constants/constants_resource.dart';
import '../../models/user_json_model/user_json_model.dart';

part 'user_model_remote_data_provider.g.dart';

@RestApi(baseUrl: ConstantsResource.BASE_URL)
abstract class UserModelRemoteDataProvider {
  factory UserModelRemoteDataProvider(Dio dio) = _UserModelRemoteDataProvider;

  @GET(ConstantsResource.GET_USERS_ENDPOINT)
  Future<UserJsonModel> getUser();
}
