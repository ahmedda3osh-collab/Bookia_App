import 'package:bookia_app/core/helper/extentions.dart';
import 'package:bookia_app/core/routes/routes.dart';
import 'package:bookia_app/core/widgets/app_button.dart';
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
            151.verticalSpace,
            Assets.images.splashLogo.image(height: 66, width: 210),
            28.verticalSpace,
            Text(
              LocaleKeys.splash_screen_title.tr(), 
              style: Theme.of(context).textTheme.titleMedium,
            ),
            28.verticalSpace,
            ToggleMode(),
            150.verticalSpace,
                  AppButton(text :LocaleKeys.login.tr(),
                    onTap: (){
                     
                      context.pushNamed(Routes.loginScreen);
                    },
                  ),
                  15.verticalSpace,
                  AppButton(text :LocaleKeys.register.tr(), backgroundColor: Colors.white,
                    onTap: (){
                        
                      context.pushNamed(Routes.registerScreen);
                    },
                  ),
          ],
          
        ),
      ),
    );
  }
}
