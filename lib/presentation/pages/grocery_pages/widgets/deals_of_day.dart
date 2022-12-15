import 'package:apptask/presentation/shared_widgets/custom_listview.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../../../core/colors.dart';
import '../../../shared_widgets/fav_item.dart';
import '../../favorite_pages/favorite_controller.dart';
import 'deals_item.dart';


class DealsOfDay extends StatelessWidget {
   DealsOfDay({Key? key}) : super(key: key);

  FavoriteController favoriteController = Get.put(FavoriteController());
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 120.h,
      child: CustomListViewBuilder(
          itemBuilder: (context,index){
            return Row(
              children:  [
                FavItem(
                  image: (favoriteController.favList.contains(index))?
                    'assets/icons/addfav.png'
                  :'assets/icons/fav.png',
                  categoryColor: AppColors.steakColor,
                  onTap: (){
                    print('index==${favoriteController.numberOfList}');
                    favoriteController.addFavItem(
                        FavItem(
                          image: 'assets/icons/fav.png',
                          categoryColor: AppColors.steakColor,
                        ),
                      index
                    );
                  },
                ),
                DealsItem(
                  name: 'Summer Sun Ice Cream Pack',
                  pieces: 'Pieces 5',
                  time: '15 Minutes Away',
                  price: '\$ 12',
                  offer:'\$ 18' ,
                )
              ],
            );
          },
          itemCount: 5),
    );
  }
}
