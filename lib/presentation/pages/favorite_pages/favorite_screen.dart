import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/colors.dart';
import '../../shared_widgets/screen_main_widget.dart';
import '../../shared_widgets/text_widget.dart';

class FavoriteScreen extends StatelessWidget {
  const FavoriteScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  ScreenMainWidget(
      text: 'Oxford Street',
      child:
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TextWidget(
            'Favorite',
            fontSize: 15.sp,
            fontWeight: FontWeight.w500,
            color: AppColors.screenTitleColor,
          ),
          SizedBox(height: 35.h,),



        ],
      ),


    );
  }
}
