import 'package:explosive_app/business/business.dart';
import 'package:explosive_app/ui/constants/constants.dart';
import 'package:explosive_app/ui/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class RequestDropDown extends StatefulWidget {
  const RequestDropDown({
    super.key,
    required this.fieldName,
    required this.defaultValue,
    required this.dropDownItems,
  });

  final String fieldName;
  final String defaultValue;
  final List<String> dropDownItems;

  @override
  State<RequestDropDown> createState() => _RequestDropDownState();
}

class _RequestDropDownState extends State<RequestDropDown> {
  late String selectedValue;

  List<String> myList = ["Hello World 1", "Hello World 2", "Hello World 3"];

  @override
  void initState() {
    super.initState();
    selectedValue = widget.defaultValue;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          widget.fieldName,
          style: AppTextStyles.bold(24, AppColors.dark02),
        ),
        const SizedBox(height: 10),
        Container(
          height: 64,
          width: 275,
          decoration: BoxDecoration(
            border: Border.all(color: AppColors.dark03),
            borderRadius: BorderRadius.circular(6),
          ),
          child: Align(
            alignment: Alignment.centerLeft,
            child: BlocBuilder<RequestFromCubit, String>(
              builder: (context, state) {
                return DropdownButton(
                    value: state,
                    underline: Container(),
                    items: myList
                        .map<DropdownMenuItem<String>>(
                          (String e) => DropdownMenuItem<String>(
                            value: e,
                            child: Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 15.0),
                              child: Text(
                                e,
                                style: AppTextStyles.semiBold(
                                    24, AppColors.dark03),
                              ),
                            ),
                          ),
                        )
                        .toList(),
                    onChanged: (String? newValue) {
                      return context
                          .read<RequestFromCubit>()
                          .selectValue(newValue!);
                    });
              },
            ),
          ),
        ),
      ],
    );
  }
}
