import 'package:final_project/core/constants/app_color.dart';
import 'package:final_project/shared_widgets/custom_browse_formfield.dart';
import 'package:final_project/shared_widgets/custom_sale_item_container.dart';
import 'package:final_project/presentation/browse_screen/filter_page.dart';
import 'package:final_project/presentation/home/cubit/home_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BrowseScreen extends StatelessWidget {
  const BrowseScreen({super.key});
  
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          HomeCubit()..getProducts(), 
      child: BlocConsumer<HomeCubit, HomeState>(
        listener: (context, state) {},
        builder: (context, state) {
          var cubit = context.read<HomeCubit>();
          return Scaffold(
            appBar: AppBar(
              backgroundColor: AppColor.whiteConstantColor,
              automaticallyImplyLeading: false,
              title: CustomBrowseFormfield(
                width: 375.w,
                height: 60.h,
                hintText: 'Search laptop, headset..',
                onpressedFn: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => BlocProvider.value(
                        value: context.read<HomeCubit>(),
                        child: FilterPageScreen(),
                      ),
                    ),
                  );
                },
              ),
            ),
            body: Padding(
              padding: EdgeInsets.symmetric(vertical: 30.0.h, horizontal: 10.w),
              child: SizedBox(
                height: 530.h,
                child: GridView.builder(
                  padding: EdgeInsets.symmetric(vertical: 15.h),
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisSpacing: 30.h,
                    childAspectRatio: 155.w / 221.h,
                  ),
                  itemCount: cubit.browsedProducts.length,
                  itemBuilder: (context, index) {
                    return CustomSaleItemContainer(
                      product: cubit.browsedProducts[index],
                      listofproducts: cubit.browsedProducts,
                    );
                  },
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
