import 'package:final_project/core/constants/app_color.dart';
import 'package:final_project/shared_widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomFilterModalSheet extends StatefulWidget {
  const CustomFilterModalSheet({super.key});

  @override
  State<CustomFilterModalSheet> createState() => _CustomFilterModalSheetState();
}

class _CustomFilterModalSheetState extends State<CustomFilterModalSheet> {
  RangeValues _currentRange = const RangeValues(160, 1960);

  @override
  Widget build(BuildContext context) {
    return Container(
      
      width: double.infinity,
      decoration: BoxDecoration(
        color: AppColor.whiteConstantColor,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20.r),
          topRight: Radius.circular(20.r),
        ),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.0.w),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 10.h),
              Center(
                child: Container(
                  height: 4.h,
                  width: 66.7.h,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(11.r),
                    color: Colors.black.withOpacity(0.2),
                  ),
                ),
              ),
              SizedBox(height: 22.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Filter',
                    style: GoogleFonts.plusJakartaSans(
                      color: AppColor.teaxtAppMainColor,
                      fontSize: 18.sp,
                      fontWeight: FontWeight.w600,
                      height: 1.44.h,
                    ),
                  ),
                  Text(
                    'Reset',
                    style: GoogleFonts.plusJakartaSans(
                      color: const Color(0xFF1B5EC9),
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w600,
                      height: 1.43.h,
                    ),
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 24.0.h),
                child: Divider(
                  height: 1,
                  color: AppColor.outlinegreyBorderColor,
                ),
              ),
              // Price Range Title
              Text(
                'Price range',
                style: GoogleFonts.plusJakartaSans(
                  color: AppColor.teaxtAppMainColor,
                  fontSize: 18.sp,
                  fontWeight: FontWeight.w600,
                  height: 1.44.h,
                ),
              ),
              SizedBox(height: 16.h),

              RangeSlider(
                values: _currentRange,
                min: 0,
                max: 2500,
                divisions: 50,
                labels: RangeLabels(
                  "\$${_currentRange.start.round()}",
                  "\$${_currentRange.end.round()}",
                ),
                activeColor: Colors.orange,
                onChanged: (RangeValues values) {
                  setState(() {
                    _currentRange = values;
                  });
                },
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "\$${_currentRange.start.round()}",
                    style: GoogleFonts.plusJakartaSans(
                      color: AppColor.teaxtAppMainColor,
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Text(
                    "\$${_currentRange.end.round()}",
                    style: GoogleFonts.plusJakartaSans(
                      color: AppColor.teaxtAppMainColor,
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 24.h,),
              CustomButton(label: "Apply Filter", onPressed: () {
                
              },),
              SizedBox(height: 24.h,)
            ],
          ),
        ),
      ),
    );
  }
}
