import 'package:apptask/core/colors.dart';
import 'package:apptask/presentation/shared_widgets/text_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


class CustomAppBar extends StatelessWidget {
final String? location;

  const CustomAppBar({super.key, this.location});
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          width: 122.w,
          height: 34.h,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage(
                'assets/icons/Group 20706.png'
              ),
              fit: BoxFit.cover
            ),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('assets/icons/location.png'),
              SizedBox(width: 7.w,),
              TextWidget(
                location!,
                color: Colors.white,
                fontSize: 11.sp,
                fontWeight: FontWeight.w400,
              )
            ],
          ),

        ),
        Container(
          width: 34.w,
          height: 34.h,
          decoration:   BoxDecoration(
            border: Border.all(color: AppColors.borderColor),
            shape: BoxShape.circle
          ),
        )
      ],
    );
  }
}
