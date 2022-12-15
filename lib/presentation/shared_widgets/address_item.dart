import 'package:apptask/core/colors.dart';
import 'package:apptask/presentation/shared_widgets/text_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'custom_container.dart';

class AddressItem extends StatelessWidget {
  final String? addressType;
  final String? city;
  final String? street;

  const AddressItem({super.key, this.addressType, this.city,  this.street});
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsetsDirectional.only(start: 7.w,end: 7.w),
      width: 167.w,
      height: 55.h,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: AppColors.borderColor.withOpacity(0.2))
      ),
      child: Row(
        children: [
          CustomContainer(
            width: 39.w,
            height: 38.h,
            color: AppColors.addressColor,
          ),
          SizedBox(width: 13.w,),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextWidget(
                addressType!,
                fontSize: 11.sp,
                fontWeight: FontWeight.w500,
              ),
              TextWidget(
                city!,
                fontSize: 9.sp,
                fontWeight: FontWeight.w400,
              ),
              TextWidget(
                street!,
                fontSize: 9.sp,
                fontWeight: FontWeight.w400,
              )
            ],
          )
        ],
      ),
    );
  }
}
