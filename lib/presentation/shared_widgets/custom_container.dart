import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


class CustomContainer extends StatelessWidget {
final double? width;
final double? height;
final Color color;
final Widget? child;
final bool showWidget;

  const CustomContainer({super.key, this.width, this.height,
required this.color,this.child,this.showWidget=false});
  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
          color:color,
          borderRadius: BorderRadius.circular(10)
      ),
      child: (showWidget==true)?child:const SizedBox()
    );
  }
}
