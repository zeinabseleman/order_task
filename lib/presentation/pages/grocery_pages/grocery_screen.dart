import 'package:apptask/core/colors.dart';
import 'package:apptask/presentation/pages/grocery_pages/widgets/ad_item.dart';
import 'package:apptask/presentation/pages/grocery_pages/widgets/categories.dart';
import 'package:apptask/presentation/pages/grocery_pages/widgets/deals_of_day.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../shared_widgets/address_item.dart';
import '../../shared_widgets/category_count.dart';
import '../../shared_widgets/fav_item.dart';
import '../../shared_widgets/screen_main_widget.dart';

import '../../shared_widgets/search_text_field.dart';
import '../../shared_widgets/text_widget.dart';

class GroceryScreen extends StatelessWidget {
  const GroceryScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  ScreenMainWidget(
        text: 'Mustafa St.',
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SearchTextField(
              hintText: 'Search in thousands of products',
            ),
            SizedBox(height: 25.h,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                AddressItem(
                  addressType: 'Home Address',
                  city: 'Mustafa St. No:2',
                  street: 'Street x12',
                ),
                AddressItem(
                  addressType: 'Office Address',
                  city: 'Axis Istanbul, B2 Blok',
                  street: 'Floor 2, Office 11',
                )
              ],
            ),
            SizedBox(height: 21.h,),
            const CategoryCount(seeAll: true,text: 'Explore by Category'),
            SizedBox(height: 17.h,),
            const Categories(),
            SizedBox(height: 25.h,),
            const CategoryCount(text: 'Deals of the day',),
            SizedBox(height: 20.h,),
             DealsOfDay(),
            SizedBox(height: 30.h,),
            const AdItem(),



          ],
        )

    );
  }
}
