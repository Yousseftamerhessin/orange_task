import 'package:final_project/core/constants/app_color.dart';
import 'package:final_project/shared_widgets/custom_app_bar_container_icon.dart';
import 'package:final_project/shared_widgets/custom_button.dart';
import 'package:final_project/shared_widgets/custom_hot_deals_Product_List.dart';
import 'package:final_project/shared_widgets/custom_product_colors.dart';
import 'package:final_project/shared_widgets/custom_product_description.dart';
import 'package:final_project/models/product_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class ProductDetailedScreen extends StatelessWidget {
  final ProductModel product;
  final List<ProductModel> listofproducts;
  const ProductDetailedScreen(
      {super.key, required this.product, required this.listofproducts});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColor.whiteConstantColor,
        automaticallyImplyLeading: false,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            CustomAppBarContainerIcon(
              containerIcon: Icons.arrow_back,
              ontapFn: () {
                Navigator.pop(context);
              },
            ),
            CustomAppBarContainerIcon(
              containerIcon: Icons.favorite_outline,
              ontapFn: () {},
            )
          ],
        ),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 20.h,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.0.w),
              child: Center(
                  child: Text(
                product.title!,
                style: GoogleFonts.plusJakartaSans(
                  color: AppColor.teaxtAppMainColor,
                  fontSize: 24.sp,
                  fontWeight: FontWeight.w600,
                  height: 1.25.h,
                ),
              )),
            ),
            SizedBox(
              height: 20.h,
            ),
            Center(
              child: Text(
                '\$${product.price}',
                style: GoogleFonts.plusJakartaSans(
                  color: AppColor.appPriceColor,
                  fontSize: 20.sp,
                  fontWeight: FontWeight.w700,
                  height: 1.20.h,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 40.0.h),
              child: Center(
                  child: SizedBox(
                      height: 250.h,
                      width: 375.w,
                      child: Image.network(product.image!))),
            ),
            CustomProductColors(),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.0.w),
              child: CustomProductDescription(
                  productDescription: product.description!),
            ),
            SizedBox(
              height: 52.h,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.0.w),
              child: Text(
                'Product Related',
                style: GoogleFonts.plusJakartaSans(
                  color: AppColor.teaxtAppMainColor,
                  fontSize: 18.sp,
                  fontWeight: FontWeight.w600,
                  height: 1.44.h,
                ),
              ),
            ),
            CustomHotdealsProductlist(listofproducts: listofproducts),
            SizedBox(
              height: 20.h,
            ),
            Container(
              width: 375.w,
              height: 80.h,
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20.r),
                      topRight: Radius.circular(20.r)),
                  color: AppColor.whiteConstantColor),
              child: Row(
                children: [
                  CustomAppBarContainerIcon(
                      containerIcon: Icons.inventory_2_outlined,
                      ontapFn: () {}),
                  SizedBox(
                    width: 12.w,
                  ),
                  CustomButton(
                    label: "Check Out",
                    onPressed: () {},
                    customwidth: 270.w,
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
