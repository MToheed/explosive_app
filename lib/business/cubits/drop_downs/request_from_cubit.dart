import 'package:flutter_bloc/flutter_bloc.dart';

class RequestFromCubit extends Cubit<String> {
  RequestFromCubit(super.initialValue);

  void selectValue(String newValue) {
    emit(newValue);
  }
}
