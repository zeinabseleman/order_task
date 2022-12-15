import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../core/colors.dart';
class SearchTextField extends StatelessWidget {
  final TextEditingController? controller;
  final String hintText;
  final TextInputType keyboardType;
  final bool obscureText;
  final ValueChanged<String>? onChanged;
  final ValueChanged<String>? onSubmit;
  final VoidCallback? onEditingComplete;
  final int maxLine;
  final int minLine;
  final bool enabled;
  final VoidCallback? onTap;
  final FocusNode? searchFocusNode;
  final Widget? prefixWidget;
  final Widget? suffixWidget;
  const SearchTextField(
      {Key? key,
      this.controller,
      required this.hintText,
      this.onEditingComplete,
      this.searchFocusNode,
      this.onTap,
      this.maxLine = 5,
      this.minLine = 1,
      this.keyboardType = TextInputType.text,
      this.obscureText = false,
      this.onChanged,
      this.onSubmit,
      this.enabled = true,
      this.prefixWidget,
      this.suffixWidget,
      })
      : super(key: key);

  @override
  Widget build(BuildContext context) {
     return TextFormField(
      autovalidateMode: AutovalidateMode.onUserInteraction,
      onFieldSubmitted: onSubmit,
      onEditingComplete: onEditingComplete,
      onTap: onTap,
      focusNode: searchFocusNode,
      enabled: enabled,
      maxLines: maxLine,
      minLines: minLine,
      showCursor: false,
      controller: controller,
      obscureText: obscureText,
      keyboardType: keyboardType,
      autocorrect: false,
      onChanged: onChanged,
      textAlign: TextAlign.left,
      decoration: InputDecoration(
        isDense: true,
        filled: true,
        fillColor:AppColors.bottomNavBarColor,
        hintText: hintText,
        hintStyle: TextStyle(
          color: AppColors.textColor,
          height: 0,
          fontSize: 11.sp,
          fontWeight: FontWeight.w400,
        ),
        prefixIcon: (prefixWidget == null)
            ? Image.asset('assets/icons/search.png')
            : prefixWidget,
        prefixIconConstraints: BoxConstraints(
            maxWidth: 30.w,
            minHeight: 17.h,
            minWidth: 30.w,
            maxHeight: 17.h),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        contentPadding: EdgeInsetsDirectional.only(top: 5.h, bottom: 5.h,start: 10.w,end: 10.w),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide:  BorderSide(color: AppColors.borderColor.withOpacity(0.2)),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide:  BorderSide(color: AppColors.borderColor.withOpacity(0.2)),
        ),
        disabledBorder: InputBorder.none,
      ),
    );
  }
}
