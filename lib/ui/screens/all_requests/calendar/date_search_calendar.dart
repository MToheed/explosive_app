import 'package:explosive_app/business/business.dart';
import 'package:explosive_app/ui/constants/constants.dart';
import 'package:explosive_app/ui/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';

class DateSearchCalendar extends StatelessWidget {
  const DateSearchCalendar({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<AllRequestsProvider>(
      builder: (_, provider, __) {
        return GestureDetector(
          onTap: () async {
            final newDate = await showDatePicker(
              context: _,
              initialDate: provider.date,
              firstDate: DateTime(2000),
              lastDate: DateTime(2050),
            );
            if (newDate != null && newDate != provider.date) {
              provider.setDate(newDate);
            }
          },
          child: Container(
            height: 64,
            width: 270,
            decoration: BoxDecoration(
              color: Colors.transparent,
              borderRadius: BorderRadius.circular(6),
              border: Border.all(color: AppColors.dark03),
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10.0),
                  child: AppSvgPicture(path: "assets/icons/calendar.svg"),
                ),
                Text(
                  DateFormat('dd/MM/yyyy').format(provider.date),
                  style: AppTextStyles.semiBold24Dark03,
                )
              ],
            ),
          ),
        );
      },
    );
  }
}
