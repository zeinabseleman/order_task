import 'package:apptask/core/colors.dart';
import 'package:apptask/presentation/shared_widgets/text_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../shared_widgets/custom_container.dart';
import '../../../shared_widgets/custom_listview.dart';

class Categories extends StatefulWidget {
  const Categories({Key? key}) : super(key: key);

  @override
  State<Categories> createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height:75 ,
      child: CustomListViewBuilder(
        itemCount: colors.length,
        itemBuilder: (context , index ) {
          return Column(
            children: [
              CustomContainer(
                height: 56.h,
                width: 56.w,
                color: colors[index],
              ),
              SizedBox(height: 6.h,),
              TextWidget(
                name[index],
                fontSize: 10.sp,
                fontWeight: FontWeight.w400,
              )
            ],
          );
        },

      ),
    );
  }

  List<Color> colors=[
    AppColors.steakColor,
    AppColors.vegetableColor,
    AppColors.addressColor,
    AppColors.quantityColor,
    AppColors.juiceColor,
  ];

  List<String> name=[
    'Steak',
    'Vegetables',
    'Beverages',
    'Fish',
    'Juice'
  ];
}
