import 'dart:ui';

import 'package:final_project/models/product_model.dart';
import 'package:final_project/presentation/product_detailed/presentation/product_detailed_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../core/constants/app_color.dart';

class CustomSaleItemContainer extends StatelessWidget {
  final ProductModel product;
  final List<ProductModel> listofproducts;
  const CustomSaleItemContainer({super.key, required this.product, required this.listofproducts });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context)=> ProductDetailedScreen(product: product, listofproducts: listofproducts,)));
      },
      child: Container(
        height: 221.h,
        width: 155.w,
        margin: EdgeInsets.symmetric(horizontal: 15.w),
        decoration: BoxDecoration(
          color: AppColor.whiteConstantColor,
          borderRadius: BorderRadius.circular(20.r),
        ),
        child: Stack(
          clipBehavior: Clip.none,
          children: [
            Column(
              children: [
                // Image
                Container(
                  height: 108.h,
                  width: 123.w,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: NetworkImage(product.image!),
                    ),
                  ),
                ),
                SizedBox(height: 10.h),
                // Product Name
                Text(
                  product.title!,
                  textAlign: TextAlign.center,
                  style: GoogleFonts.plusJakartaSans(
                    color: AppColor.teaxtAppMainColor,
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w600,
                    height: 1.43.h,
                  ),
                  maxLines: 3,
                  overflow: TextOverflow.ellipsis,
                ),
                SizedBox(height: 15.h),
                // Price
                Text(
                  r'$' + product.price.toString(),
                  style: GoogleFonts.plusJakartaSans(
                    color: Color(0xFF1B5EC9),
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w700,
                    height: 1.50.h,
                  ),
                ),
              ],
            ),
            // Bottom Tag
            Positioned(
              // 15
              bottom: -22.h,
              left: 0,
              right: 0,
              child: Align(
                alignment: Alignment.center,
                child: IntrinsicWidth(
                  child: Container(
                    height: 30.h,
                    padding: EdgeInsets.symmetric(horizontal: 8.w),
                    decoration: BoxDecoration(
                      color: Colors.orange,
                      borderRadius: BorderRadius.circular(25),
                    ),
                    child: Center(
                      child: Text(
                        'NEW 30% OFF',
                        style: GoogleFonts.plusJakartaSans(
                          color: AppColor.whiteConstantColor,
                          fontSize: 10.sp,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
