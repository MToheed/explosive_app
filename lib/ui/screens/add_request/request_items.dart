import 'package:explosive_app/data/data.dart';
import 'package:explosive_app/ui/constants/constants.dart';
import 'add_request.dart';
import 'package:explosive_app/ui/widgets/widgets.dart';
import 'package:flutter/material.dart';

class RequestItems extends StatelessWidget {
  RequestItems({super.key});

  final gunLengthController = TextEditingController();
  final gunSizeController = TextEditingController();
  final phasingController = TextEditingController();
  final stagesController = TextEditingController();
  final shotDensityController = TextEditingController();

  final addRequest = AddRequest();
  bool gunLengthError = false;

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
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  RequestTextField(
                    title: "Gun Length *",
                    hintText: "i.e 5 x 1.5 ft carriers",
                    controller: gunLengthController,
                  ),
                  RequestTextField(
                    title: "Gun Size *",
                    hintText: "i.e 3-1/8\"OD",
                    controller: gunSizeController,
                  ),
                  const GunTypeDropDown(
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
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  RequestTextField(
                    title: "Phasing *",
                    hintText: "i.e 60 Deg (as per program)",
                    controller: phasingController,
                  ),
                  RequestTextField(
                    title: "No. of stages *",
                    hintText: "i.e 50 stages, 5 clusters",
                    controller: stagesController,
                  ),
                  RequestTextField(
                    title: "Shot Density*",
                    hintText: "i.e 9 shots per cluster",
                    controller: shotDensityController,
                  ),
                ],
              ),
            ],
          ),
        ),
        const SizedBox(height: 25),
        Align(
          alignment: Alignment.center,
          child: CircularButton(
            title: "ADD",
            onPressed: () {
              // addRequest.gunLength = gunLengthController.text;
              // addRequest.gunSize = gunSizeController.text;
              // addRequest.gunType = state;
              // addRequest.phasing = phasingController.text;
              // addRequest.stages = stagesController.text;
              // addRequest.shotDensity = shotDensityController.text;
              //
              // print(addRequest.gunType!);

              // myList.add(addRequest.gunLength!);
              // myList.add(addRequest.gunSize!);
              // myList.add(addRequest.gunType!);
              // myList.add(addRequest.phasing!);
              // myList.add(addRequest.stages!);
              // myList.add(addRequest.shotDensity!);

              // context.read<AddRequestCubit>().addRow(myList);
              // List<String> myList = [];
            },
          ),
        ),
      ],
    );
  }
}
