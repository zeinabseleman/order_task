import 'package:apptask/core/colors.dart';
import 'package:apptask/presentation/shared_widgets/text_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../shared_widgets/order_item.dart';
import '../../shared_widgets/screen_main_widget.dart';
import 'cart_controller.dart';

class CartScreen extends StatelessWidget {
   CartScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return  ScreenMainWidget(
      text: 'Oxford Street',
      child:
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextWidget(
                'Cart',
                fontSize: 15.sp,
                fontWeight: FontWeight.w500,
                color: AppColors.screenTitleColor,
              ),
              SizedBox(height: 35.h,),
              OrderItem(
                quantity: 2,
                color:AppColors.quantityColor ,
                price: 30,
                name: 'Turkish Steak',
                type: '173 Grams',
              )


            ],
          ),


    );
  }
}
