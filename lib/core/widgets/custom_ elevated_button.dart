

import 'package:flutter/material.dart';
import 'package:internship_algoriza_task1/core/utils/app_colors.dart';

class CustomElevatedButton extends StatelessWidget {
  const CustomElevatedButton({Key? key, required this.txt}) : super(key: key);
 final String txt;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(onPressed: (){},
        style: ElevatedButton.styleFrom(
            primary: AppColors.primaryColor ,
            shape:RoundedRectangleBorder(borderRadius: BorderRadius.circular(7),),
            padding: const EdgeInsets.symmetric(vertical: 16,)
        ),
        child:  Text(txt,style: const TextStyle(fontSize: 17),),),
    );
  }
}
