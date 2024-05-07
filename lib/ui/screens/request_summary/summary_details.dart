import 'package:explosive_app/ui/constants/constants.dart';
import 'package:explosive_app/ui/widgets/widgets.dart';
import 'package:flutter/material.dart';

class SummaryDetails extends StatelessWidget {
  const SummaryDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const RequestSection(title: "Summary Details"),
            Padding(
              padding: const EdgeInsets.only(top: 20.0),
              child: RequestButton(
                title: "Edit",
                iconUrl: "assets/icons/edit.svg",
                onPressed: () {},
              ),
            ),
          ],
        ),
        const SizedBox(height: 20),
        Container(
          padding: const EdgeInsets.all(30),
          decoration: BoxDecoration(
              color: AppColors.white, borderRadius: BorderRadius.circular(6)),
          child: const Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: SummaryItem(
                      title: "Explosive Required Date *",
                      description: "20/02/2024",
                    ),
                  ),
                  Expanded(
                    child: SummaryItem(
                      title: "Request From *",
                      description: "JRAK Well Completion Operation Division",
                    ),
                  ),
                  Expanded(
                    child: SummaryItem(
                      title: "Request To *",
                      description:
                          "Deputy Manager, Saudi Aramco Abqaiq Area Government Affairs",
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: SummaryItem(
                      title: "Eng. Program Letter No. *",
                      description: "JRAK00934",
                    ),
                  ),
                  Expanded(
                    child: SummaryItem(
                      title: "GPS Latitude *",
                      description: "2830229.20",
                    ),
                  ),
                  Expanded(
                    child: SummaryItem(
                      title: "GPS Longitude *",
                      description: "2830229.20",
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: SummaryItem(
                      title: "Service Company *",
                      description: "SLB",
                    ),
                  ),
                  Expanded(
                    child: SummaryItem(
                      title: "BackUp *",
                      description: "10%",
                    ),
                  ),
                  Expanded(
                    child: SummaryItem(
                      title: "WBS *",
                      description: "87-23710-7850",
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
