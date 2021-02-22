// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$HomeController on _HomeBase, Store {
  final _$doctorAtom = Atom(name: '_HomeBase.doctor');

  @override
  List<DoctorModel> get doctor {
    _$doctorAtom.reportRead();
    return super.doctor;
  }

  @override
  set doctor(List<DoctorModel> value) {
    _$doctorAtom.reportWrite(value, super.doctor, () {
      super.doctor = value;
    });
  }

  final _$isBusyAtom = Atom(name: '_HomeBase.isBusy');

  @override
  bool get isBusy {
    _$isBusyAtom.reportRead();
    return super.isBusy;
  }

  @override
  set isBusy(bool value) {
    _$isBusyAtom.reportWrite(value, super.isBusy, () {
      super.isBusy = value;
    });
  }

  final _$getAllAsyncAction = AsyncAction('_HomeBase.getAll');

  @override
  Future<Null> getAll() {
    return _$getAllAsyncAction.run(() => super.getAll());
  }

  @override
  String toString() {
    return '''
doctor: ${doctor},
isBusy: ${isBusy}
    ''';
  }
}
