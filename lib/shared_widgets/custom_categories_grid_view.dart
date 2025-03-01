import 'package:final_project/shared_widgets/custom_sale_item_container.dart';
import 'package:final_project/models/product_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomCategoriesGridView extends StatelessWidget {
  final List<ProductModel> listofproducts;
  const CustomCategoriesGridView({super.key, required this.listofproducts});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 30.0.h, horizontal: 10.w),
      child: SizedBox(
        height: 530.h,
        child: GridView.builder(
          padding: EdgeInsets.symmetric(vertical: 15.h),
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              mainAxisSpacing: 30.h,
              childAspectRatio: 155.w / 221.h),
          itemCount: listofproducts.length,
          itemBuilder: (context, index) => CustomSaleItemContainer(product: listofproducts[index], listofproducts: listofproducts,) ,
        ),
      ),
    );
  }
}
