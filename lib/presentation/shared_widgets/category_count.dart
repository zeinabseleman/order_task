import 'package:apptask/core/colors.dart';
import 'package:apptask/presentation/shared_widgets/text_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CategoryCount extends StatelessWidget {
final bool seeAll;
final String? text;

  const CategoryCount({super.key,  this.seeAll=false,this.text});
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
       children: [
         TextWidget(
           text!,
           fontSize: 11.sp,
           fontWeight: FontWeight.w500,
         ),
         if(seeAll==true)
         TextWidget(
           'See All (36)',
           fontSize: 9.sp,
           fontWeight: FontWeight.w400,
           color: AppColors.categoryColor,
         ),
       ],
    );
  }
}
