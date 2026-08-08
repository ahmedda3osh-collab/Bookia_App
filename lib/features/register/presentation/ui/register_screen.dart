import 'package:bookia_app/core/widgets/app_button.dart';
import 'package:bookia_app/core/widgets/custom_back_button.dart';
import 'package:bookia_app/core/widgets/custom_text_field.dart';
import 'package:bookia_app/gen/locale_keys.g.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

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
            SizedBox(height: 30.h),
            Text(LocaleKeys.hello_register_to_get_started.tr(), style: 
            Theme.of(context).textTheme.titleLarge?.copyWith(fontWeight:
             FontWeight.bold)),
              SizedBox(height: 32.h),
              CustomTextField(
              hintText: LocaleKeys.username.tr(),
              keyboardType:TextInputType.name
              ),
              SizedBox(height: 11.h),
              CustomTextField(
              hintText: LocaleKeys.email.tr(),
              keyboardType:TextInputType.emailAddress
              ),
              SizedBox(height: 11.h),
              CustomTextField(
              hintText: LocaleKeys.password.tr(),
              keyboardType: TextInputType.visiblePassword,
              isPassword: true,
              ),
              SizedBox(height: 11.h),
              CustomTextField(
              hintText: LocaleKeys.confirm_password.tr(),
              keyboardType: TextInputType.visiblePassword,
              isPassword: true,
              ),
              SizedBox(height: 70.h),
              AppButton(
                text: LocaleKeys.register.tr(),
                onTap: (){},
              ),
              SizedBox(height: 120.h),
              Center(
                child: Text(
                  LocaleKeys.already_have_an_account_login_now.tr(),
                  style: Theme.of(context).textTheme.titleSmall,
                ),
              ),

          ],
          ),
          ),
          );
  }
}
