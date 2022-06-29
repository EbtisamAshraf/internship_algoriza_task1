
import 'package:flutter/material.dart';
import 'package:internship_algoriza_task1/core/utils/app_colors.dart';
import 'package:country_code_picker/country_code_picker.dart';

class CustomTextFormField extends StatelessWidget {
   CustomTextFormField({Key? key, required this.hintText,  this.isPrefixIcon = false , this.isPassword = false, this.keyboardType , this.isValidator= false}) : super(key: key);
final String hintText;
 bool isPrefixIcon;
 bool isPassword;
 bool isValidator;
 final TextInputType? keyboardType ;
  @override
  Widget build(BuildContext context) {
    return  TextFormField(
      obscureText: isPassword,
      keyboardType: keyboardType,
      decoration:  InputDecoration(
        prefixIcon: isPrefixIcon?  CountryCodePicker(
          initialSelection: 'eg',
          showFlag: false,
          padding: const EdgeInsets.only(bottom:1.5 ,left:7 ,right: 0,top: 1.5),
          showFlagDialog: true,
          showDropDownButton: true,
          favorite: ['+20','eg'],
          showCountryOnly: false,
          showOnlyCountryWhenClosed: false,
          alignLeft: false,

        ): null,
        hintText: hintText,
          suffixIcon: isPassword ? const Icon(Icons.visibility) : null,

          border: const OutlineInputBorder(),
          contentPadding:  const EdgeInsets.symmetric(vertical: 10,horizontal: 10),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: AppColors.primaryColor)
        ),

      ),
      validator: isValidator? (value){
        if (value!.isEmpty || value.length < 10){
          return 'Phone number is not registered';
        }else {
          return null;
        }
      } : null,
    );
  }
}
