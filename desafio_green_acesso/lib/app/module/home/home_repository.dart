import 'package:desafio_green_acesso/app/module/home/model/doctor_model.dart';
import 'package:dio/dio.dart';

class HomeRepository {
  Future<List<DoctorModel>> getAll() async {
    try {
      Response response = await Dio().get('https://api.github.com/users');
      return DoctorModel.fromList(response.data);
    } catch (e) {
      throw e;
    }
  }
}
