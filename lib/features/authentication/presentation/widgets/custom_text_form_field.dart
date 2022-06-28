
import 'package:flutter/material.dart';
import 'package:internship_algoriza_task1/core/utils/app_colors.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  TextFormField(
      decoration:  InputDecoration(
          border: OutlineInputBorder(),
          contentPadding: EdgeInsets.symmetric(vertical: 10),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: AppColors.primaryColor)
        ),

      ),
    );
  }
}
