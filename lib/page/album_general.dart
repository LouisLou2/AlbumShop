import 'package:album_detail/widget/track_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../entity/album.dart';

class AlbumGeneral extends StatelessWidget {

  final Album album;

  const AlbumGeneral({super.key,required this.album});

  @override
  Widget build(BuildContext context) {
    return Material(
      surfaceTintColor: Colors.transparent,
      color: Colors.transparent,
      shadowColor: Colors.transparent,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 200.w,vertical: 0.h),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children:[
            Image.asset(
              fit: BoxFit.cover,
              album.imageUrl,
              width: 1300.w,
            ),
            Padding(
              padding: EdgeInsets.only(right: 100.w,top: 100.h),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    album.name,
                    softWrap: true,
                    style: TextStyle(
                      fontSize: 80.sp,
                      letterSpacing: -1,
                      fontStyle: FontStyle.italic,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(0, 0, 0, 30.h),
                    child: Text(
                      '\$ 32',
                      style: TextStyle(
                        fontSize: 65.sp,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  ConstrainedBox(constraints: BoxConstraints(minWidth: 700.sp,maxHeight: 7000.sp),
                    child: TextButton(
                      onPressed: (){},
                      style: TextButton.styleFrom(
                        padding: EdgeInsets.symmetric(horizontal: 240.w,vertical: 40.h),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(1.5),
                          side: const BorderSide(
                            color: Colors.black,
                            width: 1.2,
                          ),
                        ),
                      ),
                      child: Text(
                        'Add to Cart',
                        style: TextStyle(
                          fontSize: 40.sp,
                          color: Colors.black87,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 30.sp,),
                  ConstrainedBox(constraints: BoxConstraints(minWidth: 700.sp,maxWidth: 700.sp),
                    child: TextButton(
                      onPressed: (){},
                      style: TextButton.styleFrom(
                        backgroundColor: const Color(0xff3f37c9),
                        padding: EdgeInsets.symmetric(vertical: 40.h),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(1.5),
                        ),
                      ),
                      child: Row(
                        children: [
                          const Spacer(),
                          Text(
                            'Buy With ',
                            style: TextStyle(
                              fontSize: 40.sp,
                              color: Colors.white,
                            ),
                          ),
                          Text(
                            'ShopPay!',
                            style: TextStyle(
                              fontSize: 40.sp,
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Walfork',
                            ),
                          ),
                          const Spacer(),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 10.h,left: 180.sp),
                    child: TextButton(
                      onPressed: (){},
                      child: Text(
                        'More Payment Options',
                        style: TextStyle(
                          fontSize: 33.sp,
                          color: Colors.black87,
                          fontWeight: FontWeight.bold,
                          decoration: TextDecoration.underline,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 40.h),
                  ConstrainedBox(constraints: BoxConstraints(maxWidth: 800.w,maxHeight: 800.h),
                    child: TrackListWidget(tracks: album.songs),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}