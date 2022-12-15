import 'dart:io';
import 'package:apptask/core/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'custom_app_bar.dart';


class ScreenMainWidget extends StatefulWidget {
  final Widget child;
  final String text;
  const ScreenMainWidget(
      {super.key,
      required this.child,required this.text
  });

  @override
  State<ScreenMainWidget> createState() => _ScreenMainWidgetState();
}

class _ScreenMainWidgetState extends State<ScreenMainWidget> {

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SafeArea(
      top: Platform.isAndroid ? true : false,
      bottom: false,
      child: Scaffold(
        resizeToAvoidBottomInset: true,
        backgroundColor: AppColors.backgroundColor,
        body: Padding(
          padding: EdgeInsetsDirectional.only(top: 20.h,start: 15.w,end: 15.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
               CustomAppBar(
                location: widget.text
              ),
              SizedBox(height: 20.h,),
              // SizedBox(
              //
              //   height: size.height -
              //       104.h -
              //       kBottomNavigationBarHeight -
              //       MediaQuery.of(context).padding.top,
              //   child: SingleChildScrollView(child: widget.child),
              // )
              SingleChildScrollView(child: widget.child),
            ],
          ),
        ),
      ),
    );
  }
}
