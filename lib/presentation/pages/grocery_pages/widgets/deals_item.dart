import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/colors.dart';
import '../../../shared_widgets/text_widget.dart';

class DealsItem extends StatelessWidget {
final String? name;
final String? pieces;
final String? time;
final String? price;
final String? offer;

  const DealsItem({super.key, this.name, this.pieces, this.time, this.price, this.offer});
  @override
  Widget build(BuildContext context) {
    return  Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TextWidget(
          name!,
          fontSize: 10.sp,
          fontWeight: FontWeight.w500,
        ),
        SizedBox(height: 3.h,),
        TextWidget(
          pieces!,
          fontSize: 10.sp,
          fontWeight: FontWeight.w400,
        ),
        SizedBox(height: 3.h,),

        Row(
          children: [
            Image.asset('assets/icons/location.png',width: 6.w,height: 8.h,
              color:AppColors.textColor ,),
            SizedBox(width: 10.w,),
            TextWidget(
              time!,
              fontSize: 10.sp,
              fontWeight: FontWeight.w300,
            ),
          ],
        ),
        SizedBox(height: 3.h,),

        Row(
          children: [
            TextWidget(
              price!,
              fontSize: 13.sp,
              fontWeight: FontWeight.w500,
              color: AppColors.priceColor,
            ),
            SizedBox(width: 19.w,),
            Text(
              offer!,
              style: TextStyle(
                  fontSize: 13.sp,
                  fontWeight: FontWeight.w400,
                  color: AppColors.borderColor,
                decoration: TextDecoration.lineThrough
              ),
            ),
          ],
        ),

      ],
    );
  }
}
