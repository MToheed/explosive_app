import 'package:explosive_app/ui/constants/constants.dart';
import 'package:explosive_app/ui/widgets/widgets.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ItemsTable extends StatelessWidget {
  const ItemsTable({super.key, this.isSummary = false});

  final bool isSummary;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const RequestSection(title: "Items Table"),
        Table(
          children: [
            TableRow(
              decoration: BoxDecoration(
                color: AppColors.dark02,
                borderRadius: BorderRadius.circular(4),
              ),
              children: [
                const HeadingRow(text: "Gun Length"),
                const HeadingRow(text: "Gun Size"),
                const HeadingRow(text: "Gun Type"),
                const HeadingRow(text: "Phasing"),
                const HeadingRow(text: "Stages"),
                const HeadingRow(text: "Shot Density"),
                if (!isSummary) const HeadingRow(text: "Actions"),
              ],
            ),
          ],
        ),
        ListView.builder(
          itemCount: 5,
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemBuilder: (_, index) {
            return Table(
              children: [
                TableRow(
                  decoration: BoxDecoration(
                    color: AppColors.white,
                    borderRadius: BorderRadius.circular(4),
                    border: Border.all(color: AppColors.grey02),
                  ),
                  children: [
                    const AppDataRow(text: "5 x 1.5"),
                    const AppDataRow(text: "3-1/8"),
                    const AppDataRow(text: "HSD"),
                    const AppDataRow(text: "60"),
                    const AppDataRow(text: "50"),
                    const AppDataRow(text: "9"),
                    if (!isSummary)
                      SizedBox(
                        height: 64,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            const AppSvgPicture(
                              path: "assets/icons/edit_dark.svg",
                            ),
                            GestureDetector(
                              onTap: () {
                                // showDialog(
                                //   context: context,
                                //   builder: (_) {
                                //     return const Dialog(
                                //       child: AppDialog(),
                                //     );
                                //   },
                                // );
                              },
                              child: const AppSvgPicture(
                                path: "assets/icons/delete.svg",
                              ),
                            ),
                          ],
                        ),
                      ),
                  ],
                ),
              ],
            );
          },
        ),
      ],
    );
  }
}
