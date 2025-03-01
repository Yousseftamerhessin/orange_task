import 'package:final_project/core/constants/app_color.dart';
import 'package:final_project/shared_widgets/custom_categories_grid_view.dart';
import 'package:final_project/shared_widgets/custom_category_scrollview.dart';
import 'package:final_project/shared_widgets/custom_home_top_container.dart';
import 'package:final_project/shared_widgets/custom_hot_deals_Product_List.dart';
import 'package:final_project/shared_widgets/custom_hotdeals_row.dart';
import 'package:final_project/presentation/home/cubit/home_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => HomeCubit()..getHomeData(),
      child: Scaffold(
        body: BlocConsumer<HomeCubit, HomeState>(
          listener: (context, state) {
            if (state is HomedataLoading) {
              showDialog(
                  context: context,
                  builder: (context) =>
                      Center(child: CircularProgressIndicator()));
            }
          },
          builder: (context, state) {
            final cubit = context.read<HomeCubit>();
            
            if (cubit.userData == null) {
              return Center(
                  child: CircularProgressIndicator());
            }

            return SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(
                children: [
                  CustomHomeTopContainer(
                    user: cubit.userData!,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20.0.w),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CustomHotdealsRow(),
                        CustomHotdealsProductlist(
                            listofproducts: cubit.products),
                        Text(
                          'Categories',
                          style: GoogleFonts.plusJakartaSans(
                            color: AppColor.teaxtAppMainColor,
                            fontSize: 18.sp,
                            fontWeight: FontWeight.w600,
                            height: 1.44.h,
                          ),
                        ),
                        SizedBox(
                          height: 16.h,
                        ),
                        CustomCategoryScrollview(),
                        SizedBox(
                          height: 22.h,
                        ),
                      ],
                    ),
                  ),
                  CustomCategoriesGridView(listofproducts: cubit.products),
                  SizedBox(
                    height: 20.h,
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
