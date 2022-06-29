import 'package:flutter/material.dart';
import 'package:internship_algoriza_task1/core/utils/app_colors.dart';

import '../utils/assets_manager.dart';

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
        children:  [
         SizedBox(
           height:22 ,
             width: 22,
             child: Image.asset(ImageAssets.googleLogo,fit: BoxFit.contain)),
          const SizedBox(
            width: 7,
          ),
          const Text('Sign with by google'),
        ],
      ),
    );
  }
}
