import 'package:explosive_app/business/business.dart';
import 'package:explosive_app/ui/constants/constants.dart';
import 'package:explosive_app/ui/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class WBSDropDown extends StatelessWidget {
  const WBSDropDown({super.key, required this.title, required this.items});

  final String title;
  final List<String> items;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
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
            child: BlocBuilder<WBSCubit, String>(
              builder: (context, state) {
                return DropdownButton(
                    value: state,
                    underline: Container(),
                    items: items
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
                      return context.read<WBSCubit>().selectValue(newValue!);
                    });
              },
            ),
          ),
        ),
      ],
    );
  }
}