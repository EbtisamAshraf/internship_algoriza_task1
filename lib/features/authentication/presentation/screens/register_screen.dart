import 'package:flutter/material.dart';
import 'package:internship_algoriza_task1/config/routes/app_routes.dart';
import 'package:internship_algoriza_task1/core/utils/app_colors.dart';
import 'package:internship_algoriza_task1/core/utils/assets_manager.dart';
import 'package:internship_algoriza_task1/core/utils/media_query_values.dart';
import 'package:internship_algoriza_task1/core/widgets/custom_%20elevated_button.dart';
import 'package:internship_algoriza_task1/core/widgets/custom_outlined_button.dart';
import 'package:internship_algoriza_task1/features/authentication/presentation/widgets/custom_text_form_field.dart';

class RegisterScreen extends StatelessWidget {
   RegisterScreen({Key? key}) : super(key: key);
  final formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Form(
          key: formKey,
          child: Column(
            children: [
              Stack(
                children: [
                  SizedBox(
                    height: context.height * 0.1,
                    width: double.infinity,
                    child: Image.asset(
                      ImageAssets.cover,
                      fit: BoxFit.cover,
                    ),
                  ),
                  PositionedDirectional(
                    top: 25,
                    start: 10,
                    child: ElevatedButton(
                      onPressed: () => Navigator.pushNamed(context, Routes.loginRoute),
                      style: ElevatedButton.styleFrom(
                        shape: const CircleBorder(),
                        elevation: 1.0,
                        primary: Colors.black,

                      ),
                      child: const Icon(
                        Icons.arrow_back_ios,
                        size: 16,
                      ),
                    ),
                  )
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(
                      height: 15,
                    ),
                    Text(
                      'Welcome to Fashion Daily',
                      style: Theme.of(context).textTheme.bodyMedium,
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Register',
                          style: Theme.of(context).textTheme.headlineMedium,
                        ),
                        Row(
                          children: [
                            TextButton(
                              onPressed: () {},
                              child: Text(
                                'Help',
                                style: TextStyle(
                                    fontSize: 20, color: AppColors.primaryColor),
                              ),
                            ),
                            CircleAvatar(
                                radius: 13,
                                backgroundColor: AppColors.primaryColor,
                                child: const Icon(
                                  Icons.question_mark,
                                  size: 20,
                                )),
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Text('Email',
                        style: Theme.of(context).textTheme.titleMedium,
                        textAlign: TextAlign.start),
                    const SizedBox(
                      height: 10,
                    ),
                    CustomTextFormField(
                      hintText: 'Eg. example@email.com',
                      keyboardType: TextInputType.emailAddress,
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Text('Phone Number',
                        style: Theme.of(context).textTheme.titleMedium,
                        textAlign: TextAlign.start),
                    const SizedBox(
                      height: 10,
                    ),
                    CustomTextFormField(
                      hintText: 'Eg. 812345678',
                      isPrefixIcon: true,
                      keyboardType: TextInputType.phone,
                      isValidator: true,
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Text('Password',
                        style: Theme.of(context).textTheme.titleMedium,
                        textAlign: TextAlign.start),
                    const SizedBox(
                      height: 10,
                    ),
                    CustomTextFormField(
                      hintText: 'Password',
                      isPassword: true,
                      keyboardType: TextInputType.visiblePassword,
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    CustomElevatedButton(txt: 'Register', onPressed: () {
                      if(formKey.currentState!.validate()){

                      }
                    }),
                    const SizedBox(
                      height: 20,
                    ),
                    Align(
                      alignment: Alignment.center,
                      child: Text(
                        'Or',
                        style: Theme.of(context).textTheme.bodyMedium,
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const CustomOutlinedButton(),
                    const SizedBox(
                      height: 15,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text('Has any account?'),
                        TextButton(
                          onPressed: () =>
                              Navigator.pushNamed(context, Routes.loginRoute),
                          child: Text('Sign in here',
                              style: TextStyle(
                                color: AppColors.primaryColor,
                              )),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    const Center(
                        child: Text(
                      'By registering your account, you are agree to our ',
                      textAlign: TextAlign.center,
                    )),
                    Center(
                        child: TextButton(
                      onPressed: () {},
                      child: Text('terms and condition',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: AppColors.primaryColor,
                          )),
                    ))
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
