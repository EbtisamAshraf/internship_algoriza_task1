part of 'app_cubit.dart';

abstract class AppState extends Equatable {
  const AppState();

  @override
  List<Object> get props => [];
}

class AppInitialState extends AppState {}

class GetDataState extends AppState {}

class LoadingData extends AppState {}

class AddDataState extends AppState {}

class UpdateDataState extends AppState {}

class  DeleteAllDataState extends AppState {}

class  DeleteUserState extends AppState {}

class  SelectUserState extends AppState {}









