import 'package:bookia_app/core/theme/app_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppButton extends StatelessWidget {
  final String text;
  final Color? backgroundColor;
  final void Function()? onTap;

  const AppButton({super.key, required this.text, this.backgroundColor, this.onTap });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        alignment: Alignment.center,
        padding: EdgeInsets.all( 16.r),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color:backgroundColor ?? AppColor.mainColor,
        ),
        
          child: Text(
            text,
            style: Theme.of(context).textTheme.titleSmall?.copyWith
            (color:backgroundColor ==null? Colors.white :Colors.black), 
          ),
        ),
    );
    
  }
}