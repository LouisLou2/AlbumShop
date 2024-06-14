import 'package:album_detail/entity/artifact.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MoreProductWidget extends StatelessWidget {
  final List<Artifact> products;

  const MoreProductWidget({super.key,required this.products});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      itemCount: products.length,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 4,
        childAspectRatio: 0.7,
      ),
      itemBuilder: (context,index){
        return Card(
          color: Colors.transparent,
          shadowColor: Colors.transparent,
          surfaceTintColor: Colors.transparent,
          elevation: 0,
          child: Column(
            children: [
              Image.asset(
                products[index].imageUrl,
                fit: BoxFit.cover,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 8.w),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      products[index].name,
                      style: TextStyle(
                        fontSize: 40.sp,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Text(
                      '\$ ${products[index].price}',
                      style: TextStyle(
                        fontSize: 45.sp,
                        color: Colors.black87,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}