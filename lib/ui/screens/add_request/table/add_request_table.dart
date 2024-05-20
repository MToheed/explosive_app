import 'package:explosive_app/business/business.dart';
import 'package:explosive_app/ui/constants/constants.dart';
import 'package:explosive_app/ui/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AddRequestTable extends StatefulWidget {
  const AddRequestTable({super.key});

  @override
  State<AddRequestTable> createState() => _AddRequestTableState();
}

class _AddRequestTableState extends State<AddRequestTable> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const RequestSection(title: "Items Table"),
        Table(
          children: [
            TableRow(
              decoration: BoxDecoration(
                color: AppColors.dark02,
                borderRadius: BorderRadius.circular(4),
              ),
              children: const [
                HeadingRow(text: "Gun Length"),
                HeadingRow(text: "Gun Size"),
                HeadingRow(text: "Gun Type"),
                HeadingRow(text: "Phasing"),
                HeadingRow(text: "Stages"),
                HeadingRow(text: "Shot Density"),
                HeadingRow(text: "Actions"),
              ],
            ),
          ],
        ),
        BlocBuilder<AddRequestCubit, List<List<String>>>(
          builder: (_, state) {
            return SingleChildScrollView(
              child: Table(
                children: state.map(
                  (row) {
                    return TableRow(
                      children: row.map(
                        (cell) {
                          return Text(cell);
                        },
                      ).toList(),
                    );
                  },
                ).toList(),
              ),
            );
          },
        ),
      ],
    );
  }
}
