import 'package:explosive_app/ui/constants/constants.dart';
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
          child: const Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  RequestTextField(
                    title: "Explosive Required Date *",
                    hintText: "i.e 26/02/2024",
                  ),
                  RequestTextField(
                    title: "Request From *",
                    hintText: "i.e JRAK Well Completion",
                  ),
                  RequestTextField(
                    title: "Eng. Program Letter No. *",
                    hintText: "i.e JRAK00323",
                  ),
                ],
              ),
              SizedBox(height: 20),
              Row(
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
                  RequestTextField(
                    title: "Service Company *",
                    hintText: "i.e SLB",
                  ),
                ],
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  RequestTextField(
                    title: "BackUp *",
                    hintText: "i.e 10 %",
                  ),
                  RequestTextField(
                    title: "WBS *",
                    hintText: "i.e 87-23410-2343",
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
