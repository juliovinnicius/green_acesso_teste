import 'package:desafio_green_acesso/app/module/home/home_repository.dart';
import 'package:mobx/mobx.dart';

import 'model/doctor_model.dart';

part 'home_controller.g.dart';

class HomeController = _HomeBase with _$HomeController;

abstract class _HomeBase with Store {
  @observable
  List<DoctorModel> doctor;

  _HomeBase() {
    getAll();
  }

  HomeRepository repository = HomeRepository();

  @observable
  bool isBusy = false;

  @action
  Future<Null> getAll() async {
    try {
      if (isBusy) return;

      isBusy = true;

      doctor = await repository.getAll();
    } catch (e) {
      rethrow;
    } finally {
      isBusy = false;
    }
  }
}
