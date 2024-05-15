import 'package:explosive_app/ui/constants/constants.dart';
import 'add_request.dart';
import 'package:explosive_app/ui/widgets/widgets.dart';
import 'package:flutter/material.dart';

class RequestDetails extends StatelessWidget {
  const RequestDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const RequestSection(title: "Request Details"),
        Container(
          padding: const EdgeInsets.all(30),
          decoration: BoxDecoration(
            color: AppColors.white,
            borderRadius: BorderRadius.circular(6),
          ),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Explosive Required Date *",
                        style: AppTextStyles.bold(24, AppColors.dark02),
                      ),
                      const SizedBox(height: 10),
                      AppDateCalendar(
                        kHeight: 64,
                        kWidth: 270,
                        kFirstDate: DateTime.now(),
                      ),
                    ],
                  ),
                  const RequestFromDropDown(
                    title: "Request From *",
                    items: [
                      "JARAKED (Jafurah)",
                      "South GHAWAR",
                      "NORTH ARABIA",
                    ],
                  ),
                  const RequestTextField(
                    title: "Eng. Program Letter No. *",
                    hintText: "i.e JRAK00323",
                  ),
                ],
              ),
              const SizedBox(height: 20),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  RequestTextField(
                    title: "GPS Latitude *",
                    hintText: "i.e 2823237.72",
                  ),
                  RequestTextField(
                    title: "GPS Longitude *",
                    hintText: "i.e 3456231.45",
                  ),
                  ServiceCompanyDropDown(
                    title: "Service Company *",
                    items: [
                      "Service Company 1",
                      "Service Company 2",
                      "Service Company 3",
                      "Service Company 4",
                    ],
                  ),
                ],
              ),
              const SizedBox(height: 20),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  RequestTextField(
                    title: "BackUp *",
                    hintText: "i.e 10 %",
                  ),
                  WBSDropDown(
                    title: "WBS *",
                    items: [
                      "WBS Value 1",
                      "WBS Value 2",
                      "WBS Value 3",
                      "WBS Value 4",
                    ],
                  ),
                  SizedBox(height: 64, width: 270),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}