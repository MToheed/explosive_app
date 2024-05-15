import 'package:flutter_bloc/flutter_bloc.dart';

class WBSCubit extends Cubit<String> {
  WBSCubit(super.initialValue);

  void selectValue(String newValue) {
    emit(newValue);
  }
}
