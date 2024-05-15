import 'package:flutter_bloc/flutter_bloc.dart';

class ServiceCompanyCubit extends Cubit<String> {
  ServiceCompanyCubit(super.initialValue);

  void selectValue(String newValue) {
    emit(newValue);
  }
}
