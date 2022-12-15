import 'package:apptask/core/colors.dart';
import 'package:apptask/presentation/shared_widgets/quantity_container.dart';
import 'package:apptask/presentation/shared_widgets/text_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../pages/cart_pages/cart_controller.dart';
import 'custom_container.dart';

class OrderItem extends StatelessWidget {
final Color color;
final String? type;
final String? name;
final int price;
final int? quantity;




   OrderItem({super.key, required this.color,
this.type, required this.price,this.name,
required this.quantity});

CartController cartController = Get.put(CartController());

@override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            CustomContainer(
              width: 56.w,
              height: 56.h,
              color: color,
            ),
            SizedBox(width: 20.w,),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TextWidget(
                  name!,
                  fontSize: 12.sp,
                  fontWeight: FontWeight.w400,
                  color: AppColors.orderTypeColor,
                ),
                TextWidget(
                  type!,
                  fontSize: 9.sp,
                  fontWeight: FontWeight.w400,
                  color: AppColors.orderQuantityColor,
                ),
                Obx(()=>
                    TextWidget(
                      '${price*cartController.incrementVal.value}'+'\$',
                      fontSize: 18.sp,
                      fontWeight: FontWeight.w400,
                      color: AppColors.orderPriceColor,
                    ),
                )
              ],
            )
          ],
        ),
        Row(
          children: [
            QuantityContainer(
              icon: Icons.remove,
              onTap:(){
                cartController.decrement();
              },
            ),
            SizedBox(width: 15.w,),
            Obx(()=> TextWidget(
            cartController.incrementVal.value.toString(),
              fontSize: 15.sp,
            ),
            ),
            SizedBox(width: 15.w,),
            QuantityContainer(
              icon: Icons.add,
              onTap:(){
                cartController.increment();
              },
            ),


          ],
        )
      ],
    );
  }
}
