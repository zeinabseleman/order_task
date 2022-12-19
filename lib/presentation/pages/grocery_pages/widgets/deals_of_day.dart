import 'package:apptask/presentation/pages/favorite_pages/favorite_screen.dart';
import 'package:apptask/presentation/shared_widgets/custom_listview.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../../../core/colors.dart';
import '../../../shared_widgets/fav_item.dart';
import '../../favorite_pages/favorite_controller.dart';
import '../../favorite_pages/favorite_model.dart';
import 'deals_item.dart';


class DealsOfDay extends StatefulWidget {
   const DealsOfDay({Key? key}) : super(key: key);

  @override
  State<DealsOfDay> createState() => _DealsOfDayState();
}

class _DealsOfDayState extends State<DealsOfDay> {
  FavoriteController favoriteController = Get.put(FavoriteController());
List<int> selected=[];


  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 120.h,
      child: CustomListViewBuilder(
          itemBuilder: (context,index){
            return Row(
              children:  [
                FavItem(
                  image: (selected.contains(index))?
                    'assets/icons/addfav.png'
                  :'assets/icons/fav.png',
                  categoryColor: colors[index],
                  width: (selected.contains(index))?22.w:9.w,
                  height: (selected.contains(index))?22.h:9.h,
                  onTap: (){
                    setState(() {
                      selected.add(index);
                    });
                    favoriteController.addFavItem(
                        FavoriteModel(
                          name:name[index],
                          categoryColor:colors[index],
                          image: 'assets/icons/addfav.png',
                          pieces: 'Pieces 5',
                          time: '15 Minutes Away',
                          price: '\$ 12',
                          offer:'\$ 18' ,
                        ),

                    );
                  },
                ),
                DealsItem(
                  name: name[index],
                  pieces: 'Pieces 5',
                  time: '15 Minutes Away',
                  price: '\$ 12',
                  offer:'\$ 18' ,
                )
              ],
            );
          },
          itemCount: name.length),
    );
  }
  List<String> name=[
    'Summer Sun Ice Cream Pack',
    'Summer Sun Ice Cream Pack',
    'Summer Sun Ice Cream Pack',
    'Summer Sun Ice Cream Pack'
  ];

  List<Color> colors=[
    AppColors.steakColor,
    AppColors.categoryColor,
    AppColors.juiceColor,
    AppColors.juiceColor
  ];
}
