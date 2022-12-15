import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomListViewBuilder extends StatelessWidget {
  final ScrollPhysics? physics;
  final int itemCount;
  final Widget Function(BuildContext, int) itemBuilder;
  final Axis scrollDirection;

  const CustomListViewBuilder({
    super.key,
    required this.itemBuilder,
    this.physics,
    required this.itemCount,
    this.scrollDirection = Axis.horizontal,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      scrollDirection: scrollDirection,
      physics: (physics == null) ? const ScrollPhysics() : physics,
      shrinkWrap: true,
      itemCount: itemCount,
      itemBuilder: itemBuilder,
      separatorBuilder: (BuildContext context, int index) =>
          SizedBox(width: 22.w),
    );
  }
}
