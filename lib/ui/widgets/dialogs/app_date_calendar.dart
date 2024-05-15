import 'package:explosive_app/ui/constants/constants.dart';
import 'package:explosive_app/ui/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class AppDateCalendar extends StatefulWidget {
  const AppDateCalendar(
      {super.key,
      required this.kHeight,
      required this.kWidth,
      required this.kFirstDate});

  final double kHeight;
  final double kWidth;
  final DateTime kFirstDate;

  @override
  State<AppDateCalendar> createState() => _AppDateCalendarState();
}

class _AppDateCalendarState extends State<AppDateCalendar> {
  DateTime date = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () async {
        final selectedDate = await showDatePicker(
          context: context,
          initialDate: date,
          firstDate: widget.kFirstDate,
          lastDate: DateTime(2050),
        );
        if (selectedDate != null && selectedDate != date) {
          setState(() {
            date = selectedDate;
          });
        }
      },
      child: Container(
        height: widget.kHeight,
        width: widget.kWidth,
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
              DateFormat('dd/MM/yyyy').format(date),
              style: AppTextStyles.semiBold24Dark03,
            )
          ],
        ),
      ),
    );
  }
}
