import 'package:flutter/material.dart';
import 'package:internship_algoriza_task1/core/utils/app_colors.dart';

class CustomOutlinedButton extends StatelessWidget {
  const CustomOutlinedButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: () {},
      style: OutlinedButton.styleFrom(
          primary: AppColors.primaryColor,
          side: BorderSide(color: AppColors.primaryColor, width: 1.5),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(7),
          ),
          padding: const EdgeInsets.symmetric(
            vertical: 16,
          )),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          Icon(Icons.login),
          SizedBox(
            width: 7,
          ),
          Text('Sign with by google'),
        ],
      ),
    );
  }
}
