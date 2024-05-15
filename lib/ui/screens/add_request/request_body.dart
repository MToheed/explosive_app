import 'package:explosive_app/ui/constants/constants.dart';
import 'package:explosive_app/ui/widgets/widgets.dart';
import 'add_request.dart';
import 'package:flutter/material.dart';

class RequestBody extends StatelessWidget {
  const RequestBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const RequestDetails(),
          const RequestItems(),
          const SizedBox(height: 25),
          Align(
            alignment: Alignment.center,
            child: CircularButton(
              title: "ADD",
              onPressed: () {},
            ),
          ),
          const ItemsTable(),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircularButton(
                  title: "BACK",
                  kColor: AppColors.white,
                  textColor: AppColors.dark02,
                  onPressed: () {},
                ),
                const SizedBox(width: 40),
                CircularButton(
                  title: "NEXT",
                  onPressed: () {},
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
