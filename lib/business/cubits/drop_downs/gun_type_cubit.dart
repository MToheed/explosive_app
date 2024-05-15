import 'package:flutter_bloc/flutter_bloc.dart';

class GunTypeCubit extends Cubit<String> {
  GunTypeCubit(super.initialValue);

  void selectValue(String newValue) {
    emit(newValue);
  }
}
