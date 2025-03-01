import 'package:final_project/shared_widgets/custom_sale_item_container.dart';
import 'package:final_project/models/product_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomHotdealsProductlist extends StatelessWidget {
  final List<ProductModel> listofproducts;
  const CustomHotdealsProductlist({super.key, required this.listofproducts});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 15.0.h),
      child: SizedBox(
        height: 270.h,
        width: double.infinity,
        child: ListView.builder(
          padding: EdgeInsets.symmetric(vertical: 20.h),
          itemCount: listofproducts.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) => CustomSaleItemContainer(product: listofproducts[index], listofproducts: listofproducts,) ,
        ),
      ),
    );
  }
}
