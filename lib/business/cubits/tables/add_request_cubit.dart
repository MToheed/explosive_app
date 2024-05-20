import 'package:flutter_bloc/flutter_bloc.dart';

class AddRequestCubit extends Cubit<List<List<String>>> {
  AddRequestCubit() : super([]);

  void addRow(List<String> newRow) {
    final allRows = List<List<String>>.from(state)..add(newRow);
    emit(allRows);
  }
}
