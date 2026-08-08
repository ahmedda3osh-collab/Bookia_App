

import 'package:bookia_app/core/widgets/app_button.dart';
import 'package:bookia_app/core/widgets/custom_back_button.dart';
import 'package:bookia_app/core/widgets/custom_text_field.dart';
import 'package:bookia_app/gen/locale_keys.g.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        leading: CustomBackButton(),
        leadingWidth: 50.w,
      ),
      body: Padding(
        padding:  EdgeInsets.symmetric(horizontal: 22.0.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            30.verticalSpace,
            Text(LocaleKeys.welcome_back.tr(), style: 
            Theme.of(context).textTheme.titleLarge?.copyWith(fontWeight:
             FontWeight.bold)),
             32.verticalSpace,
             CustomTextField(
              hintText: LocaleKeys.enter_email.tr(),
              keyboardType:TextInputType.emailAddress
             ),
             15.verticalSpace,
             CustomTextField(
              hintText: LocaleKeys.enter_password.tr(),
              keyboardType: TextInputType.visiblePassword,
              isPassword: true,
             ),
             25.verticalSpace,
              Padding(
                padding:  EdgeInsets.only(left: 220.0),
                child: Text(LocaleKeys.forgot_password.tr(), style: Theme.of(context).textTheme.titleSmall
                ),
              ),
             70.verticalSpace,
             AppButton(
              text: LocaleKeys.login.tr(),
              onTap: (){},
             ),
          ],
        ),
      ),
    );
  }
}