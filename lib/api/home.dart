import 'package:dio/dio.dart';
import 'package:app/config/service_url.dart';
import 'dart:async';
import 'dart:io';

Future getHtto() async{
  try{
    Response response;
    Dio dio = new Dio();
    dio.options.contentType = ContentType.parse("application/x-www-form-urlencoded") as String;
    var formData = {'lon':'115.02932','lat':'35.76189'};
    response = await dio.post(servicePath["path"],data:formData);
    if(response.statusCode==200){
      return response.data;
    }else{
      throw Exception('后端接口出现异常，请检测代码和服务器情况.........');
    }
  }catch(e){
    return print(e);
  }
}