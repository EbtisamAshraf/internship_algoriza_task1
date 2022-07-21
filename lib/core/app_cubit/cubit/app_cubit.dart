import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:internship_algoriza_task1/core/sql_db.dart';
part 'app_state.dart';

class AppCubit extends Cubit<AppState> {
  AppCubit(this.sqlDb) : super(AppInitialState());

  static AppCubit get(context) => BlocProvider.of(context);

  SqlDb sqlDb;
  List<Map> data = [];

  Future<List<Map>> getData() async {
    emit(LoadingData());
    data = await sqlDb.readData();
    emit(GetDataState());
    debugPrint('data: $data');
    return data;
  }

  TextEditingController controller = TextEditingController();

  addData() async {
    if (selectedUser.isNotEmpty) {
      updateData();
      return;
    }

    await sqlDb.insertData(controller.text);
    controller.clear();
    getData();
    emit(AddDataState());
  }

  updateData() {
    emit(LoadingData());
    sqlDb.updateData(selectedUser['id'], controller.text);
    controller.clear();
    selectedUser = {};
    getData();
    emit(UpdateDataState());
  }

  deleteUser(int id) {
    emit(LoadingData());
    sqlDb.deleteData(id);
    getData();
    emit(DeleteUserState());
  }

  deleteAllData() {
    sqlDb.deleteAllData();
    emit(DeleteAllDataState());
  }

  Map selectedUser = {};

  void selectUserToUpdate({
    required Map user,
  }) {
    selectedUser = user;
    controller.text = selectedUser['name'];
    emit(SelectUserState());
  }
}
