import 'package:explosive_app/ui/constants/constants.dart';
import 'add_request.dart';
import 'package:explosive_app/ui/widgets/widgets.dart';
import 'package:flutter/material.dart';

class RequestItems extends StatelessWidget {
  const RequestItems({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const RequestSection(title: "Request Items"),
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
                    title: "Gun Length *",
                    hintText: "i.e 5 x 1.5 ft carriers",
                  ),
                  RequestTextField(
                    title: "Gun Size *",
                    hintText: "i.e 3-1/8\"OD",
                  ),
                  GunTypeDropDown(
                    title: "Gun Type *",
                    items: [
                      "Gun Type 1",
                      "Gun Type 2",
                      "Gun Type 3",
                      "Gun Type 4",
                    ],
                  ),
                ],
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  RequestTextField(
                    title: "Phasing *",
                    hintText: "i.e 60 Deg (as per program)",
                  ),
                  RequestTextField(
                    title: "No. of stages *",
                    hintText: "i.e 50 stages, 5 clusters",
                  ),
                  RequestTextField(
                    title: "Shot Density*",
                    hintText: "i.e 9 shots per cluster",
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
