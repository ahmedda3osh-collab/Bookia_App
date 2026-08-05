import 'package:bookia_app/core/widgets/app_button.dart';
import 'package:bookia_app/features/login_screen/presentation/ui/login_screen.dart';
import 'package:bookia_app/features/register/presentation/ui/register_screen.dart';
import 'package:bookia_app/features/welcome/presentation/ui/widgets/toggel_mode.dart';
import 'package:bookia_app/gen/assets.gen.dart';
import 'package:bookia_app/gen/locale_keys.g.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(16.r),
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: Assets.images.welcomeImage.image().image,
          ),
        ),
        child: Column(
          children: [
            SizedBox(height: 151.h),
            Assets.images.splashLogo.image(height: 66, width: 210),
            SizedBox(height: 28.h),
            Text(
              LocaleKeys.splash_screen_title.tr(), 
              style: Theme.of(context).textTheme.titleMedium,
            ),
            SizedBox(height: 28.h),
            ToggleMode(),
            SizedBox(height: 150.h),
                  AppButton(text :LocaleKeys.login.tr(),
                    onTap: (){
                      Navigator.push(context,
                       MaterialPageRoute(builder: (context) => const LoginScreen()));
                    },
                  ),
                  SizedBox(height: 15.h),
                  AppButton(text :LocaleKeys.register.tr(), backgroundColor: Colors.white,
                    onTap: (){
                       Navigator.push(context,
                        MaterialPageRoute(builder: (context) => const RegisterScreen()));
                    },
                  ),
          ],
          
        ),
      ),
    );
  }
}
