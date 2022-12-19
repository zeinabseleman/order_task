import 'package:apptask/presentation/shared_widgets/custom_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class FavItem extends StatelessWidget {
final Color categoryColor;
final String? image;
final Function()? onTap;
final double? width;
final double? height;


  const FavItem({super.key,this.onTap,this.height,this.width,
required this.categoryColor,this.image});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 120.h,
      width: 120.w,
      child: Stack(
        children: [
          Center(
            child: CustomContainer(
              width: 90.w,
                height: 90.h,
                color:categoryColor
            ),
          ),
          Positioned(
            right: 88.w,
            bottom: 88.h,
            child: InkWell(
              onTap: onTap,
              child: Container(
                width: 24.w,
                height: 24.h,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color:Colors.white
                ),
                child: Center(
                  child: Image.asset(
                    image!,
                    height: height,width: width,
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
