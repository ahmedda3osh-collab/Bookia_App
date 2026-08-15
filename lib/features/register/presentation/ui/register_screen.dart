import 'package:bookia_app/core/helper/app_dialogs.dart';
import 'package:bookia_app/core/helper/extentions.dart';
import 'package:bookia_app/core/routes/routes.dart';
import 'package:bookia_app/core/widgets/app_button.dart';
import 'package:bookia_app/core/widgets/custom_back_button.dart';
import 'package:bookia_app/core/widgets/custom_text_field.dart';
import 'package:bookia_app/features/register/data/model/register_request_body.dart';
import 'package:bookia_app/features/register/presentation/cubit/cubit/register_cubit.dart';
import 'package:bookia_app/gen/locale_keys.g.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  var nameController=TextEditingController();
    var emailController=TextEditingController(); 
     var passwordController=TextEditingController();
       var confirmPasswordController=TextEditingController();
    var cityController=TextEditingController();
  var addressController=TextEditingController();
     @override
  void dispose() {
    nameController.dispose();
   passwordController.dispose();
    emailController.dispose();
    confirmPasswordController.dispose();
    addressController.dispose();
    cityController.dispose();

    super.dispose();
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(leading: CustomBackButton(), leadingWidth: 50.w),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 22.0.w),
        child: BlocListener<RegisterCubit, RegisterState>(
          listener: (context, state) {
            if(state is RegisterLoading){
              AppDialogs.LoadingDialogs(context);
            }else if(state is RegisterSuccess){
              context.pushNamedAndRemoveUntil(Routes.homeScreen, false);
            }else{
              context.pop();
              AppDialogs.ErrorDialogs(context);
            }
          },
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 30.h),
              Text(
                LocaleKeys.hello_register_to_get_started.tr(),
                style: Theme.of(
                  context,
                ).textTheme.titleLarge?.copyWith(fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 32.h),
              CustomTextField(
                controller: nameController,
                hintText: LocaleKeys.username.tr(),
                keyboardType: TextInputType.name,
              ),
              SizedBox(height: 11.h),
              CustomTextField(
                controller: emailController,
                hintText: LocaleKeys.email.tr(),
                keyboardType: TextInputType.emailAddress,
              ),
              SizedBox(height: 11.h),
              CustomTextField(
                controller: passwordController,
                hintText: LocaleKeys.password.tr(),
                keyboardType: TextInputType.visiblePassword,
                isPassword: true,
              ),
              SizedBox(height: 11.h),
              CustomTextField(
                controller: confirmPasswordController,
                hintText: LocaleKeys.confirm_password.tr(),
                keyboardType: TextInputType.visiblePassword,
                isPassword: true,
              ),
                            SizedBox(height: 11.h),

              CustomTextField(
                controller: cityController,
                hintText: LocaleKeys.city.tr(),
                keyboardType: TextInputType.text,),
                              SizedBox(height: 11.h),
              CustomTextField(
                controller: addressController,
                hintText: LocaleKeys.address.tr(),
                keyboardType: TextInputType.text,),                

              SizedBox(height: 70.h),
              AppButton(text: LocaleKeys.register.tr(), onTap: () {
                context.read<RegisterCubit>().register(RegisterRequestBody
                (name: nameController.text,
                 email: emailController.text,
                  password: passwordController.text,
                  confirmPassword: confirmPasswordController.text,
                  address: addressController.text,
                  city: cityController.text
                  ));
              }),
              
              
            ],
          ),
        ),
      ),
    );
  }
}
