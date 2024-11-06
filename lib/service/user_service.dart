
import 'package:dio/dio.dart';
import 'package:hw_1/model/user_model.dart';

Future<List<UserModel>> getUserData() async {
  try{
  Dio req = Dio();
  Response response = await req.get("https://jsonplaceholder.typicode.com/users");
  print(response);
  List<UserModel> user =List.generate(response.data!.length, (index) => UserModel.fromMap(response.data![index],));
  print(user);
  return user;
  }
  catch(error)
{
  print('No internet $error');
 return [];
}
}
