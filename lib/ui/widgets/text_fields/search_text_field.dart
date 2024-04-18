import 'package:explosive_app/ui/constants/constants.dart';
import 'package:explosive_app/ui/widgets/widgets.dart';
import 'package:flutter/material.dart';

class SearchTextField extends StatelessWidget {
  const SearchTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60,
      width: 320,
      child: TextFormField(
        decoration: InputDecoration(
          border: OutlineInputBorder(
            borderSide: const BorderSide(color: AppColors.dark03),
            borderRadius: BorderRadius.circular(6),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: AppColors.dark03),
            borderRadius: BorderRadius.circular(6),
          ),
          prefixIcon: const Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.0),
            child: AppSvgPicture(path: "assets/icons/search.svg"),
          ),
          prefixIconConstraints: const BoxConstraints(
            minHeight: 36,
            minWidth: 36,
          ),
          hintText: "Search",
          hintStyle: AppTextStyles.semiBold24Dark03,
          contentPadding: const EdgeInsets.all(15),
        ),
      ),
    );
  }
}
