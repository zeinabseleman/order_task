import 'package:apptask/core/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../shared_widgets/custom_container.dart';
import '../../../shared_widgets/text_widget.dart';

class AdItem extends StatelessWidget {
  const AdItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomContainer(
        width: 346.w,
        height: 131.h,
        color: AppColors.adColor,
        showWidget: true,
        child: Padding(
          padding: EdgeInsetsDirectional.only(top: 18.h,bottom: 10.h,start: 153.w),
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
            TextWidget(
              'Mega',
              fontSize: 11.sp,
              fontWeight: FontWeight.w400,
              color: AppColors.adTextColor,
            ),
            RichText(
              text: TextSpan(
                text: 'WHOPP',
                style: TextStyle(
                  height: 0.9,
                    color: AppColors.adNameColor,
                    fontSize: 31.sp,
                    fontWeight: FontWeight.bold),
                children: [
                  const TextSpan(
                    text: 'E',
                    style: TextStyle(
                        fontSize: 31.0,
                        fontWeight: FontWeight.bold,
                        color: AppColors.adNameSecColor),
                  ),
                  TextSpan(
                    text: 'R',
                    style: TextStyle(
                        color: AppColors.adNameColor,
                        fontSize: 31.sp,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
                Row(
                  children: [
                    TextWidget(
                      '\$ 17',
                      fontSize: 18.sp,
                      fontWeight: FontWeight.w500,
                      color: AppColors.priceColor,
                    ),
                    SizedBox(width: 40.w,),
                    Text(
                      '\$ 32',
                      style: TextStyle(
                          fontSize: 18.sp,
                          fontWeight: FontWeight.w400,
                          color:  Colors.white,
                          decoration: TextDecoration.lineThrough
                      ),
                    ),
                  ],
                ),
                TextWidget(
                  '* Available until 24 December 2020',
                  fontSize: 9.sp,
                  fontWeight: FontWeight.w400,
                  color: Colors.white,
                ),
          ]),
        ));
  }
}
