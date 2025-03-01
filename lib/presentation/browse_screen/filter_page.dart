import 'package:final_project/core/constants/app_color.dart';
import 'package:final_project/shared_widgets/custom_app_bar_container_icon.dart';
import 'package:final_project/shared_widgets/custom_browse_formfield.dart';
import 'package:final_project/shared_widgets/custom_filter_modal_sheet.dart';
import 'package:final_project/shared_widgets/custom_sale_item_container.dart';
import 'package:final_project/presentation/home/cubit/home_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class FilterPageScreen extends StatelessWidget {
  

  const FilterPageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var cubit = BlocProvider.of<HomeCubit>(context);
    return BlocConsumer<HomeCubit, HomeState>(
      listener: (context, state) {},
      builder: (context, state) {
        print("filter prod 2 : " + cubit.filterproducts.length.toString());
        return Scaffold(
          floatingActionButton: GestureDetector(
            onTap: () {
              showModalBottomSheet(
                context: context,
                isScrollControlled: true,
                builder: (tcontext) => CustomFilterModalSheet(),
              );
            },
            child: Container(
              width: 100.w,
              height: 52.h,
              margin: EdgeInsets.symmetric(horizontal: 120.w),
              decoration: ShapeDecoration(
                color: AppColor.buttonColor,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(40.r),
                ),
              ),
              child: Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Icon(
                      Icons.filter_alt,
                      color: AppColor.whiteConstantColor,
                      size: 18.sp,
                    ),
                    Text(
                      'Filter',
                      style: GoogleFonts.plusJakartaSans(
                        color: Colors.white,
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w500,
                        height: 1.50.h,
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
          appBar: AppBar(
            backgroundColor: AppColor.whiteConstantColor,
            automaticallyImplyLeading: false,
            title: Padding(
              padding: EdgeInsets.symmetric(vertical: 16.0),
              child: Row(
                children: [
                  CustomAppBarContainerIcon(
                    containerIcon: Icons.arrow_back,
                    ontapFn: () => Navigator.pop(context),
                  ),
                  SizedBox(width: 8.w),
                  CustomBrowseFormfield(
                    onpressedFn: () {
                      
                    },
                    width: 290.w,
                    height: 50.h,
                    hintText: cubit.userQuery,
                  ),
                ],
              ),
            ),
          ),
          body: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.0.w),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Result for "${cubit.userQuery}"',
                      style: GoogleFonts.plusJakartaSans(
                        color: AppColor.secondarytextColor,
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w600,
                        height: 1.43.h,
                      ),
                    ),
                    Text(
                      "${cubit.filterproducts.length} Found",
                      style: GoogleFonts.plusJakartaSans(
                        color: Color(0xFF1B5EC9),
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w600,
                        height: 1.43.h,
                      ),
                    )
                  ],
                ),
                Expanded(
                  child: GridView.builder(
                    padding: EdgeInsets.symmetric(vertical: 15.h),
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      mainAxisSpacing: 30.h,
                      crossAxisSpacing: 10.w,
                      childAspectRatio: 155.w / 221.h,
                    ),
                    itemCount: cubit.filterproducts.length,
                    itemBuilder: (context, index) {
                      return CustomSaleItemContainer(
                        product: cubit.filterproducts[index],
                        listofproducts: cubit.filterproducts,
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
