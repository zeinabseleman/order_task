import 'package:apptask/core/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class QuantityContainer extends StatelessWidget {
final IconData icon;
final Function()? onTap;

  const QuantityContainer({super.key,
required this.icon,this.onTap});
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        width: 33.w,
        height: 33.h,
        decoration:  BoxDecoration(
          color: AppColors.quantityColor,
            borderRadius: BorderRadius.circular(10)
        ),
        child: Icon(icon),
      ),
    );
  }
}
