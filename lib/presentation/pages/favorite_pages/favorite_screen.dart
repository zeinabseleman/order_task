import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/colors.dart';
import '../../shared_widgets/custom_listview.dart';
import '../../shared_widgets/fav_item.dart';
import '../../shared_widgets/screen_main_widget.dart';
import '../../shared_widgets/text_widget.dart';
import '../grocery_pages/widgets/deals_item.dart';
import 'favorite_model.dart';

class FavoriteScreen extends StatefulWidget {
   const FavoriteScreen({Key? key}) : super(key: key);

  @override
  State<FavoriteScreen> createState() => _FavoriteScreenState();
}

class _FavoriteScreenState extends State<FavoriteScreen> {
  @override

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
          CustomListViewBuilder(
            scrollDirection: Axis.vertical,
              itemBuilder: (context,index){
                return Row(
                  children:  [
                    FavItem(
                      image: 'assets/icons/addfav.png',
                      categoryColor:AppColors.steakColor,
                      width: 22.w,
                      height: 22.h,
                      onTap: (){

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
              itemCount: 1),

        ],
      ),


    );
  }


}
