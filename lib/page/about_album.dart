import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../entity/album.dart';

class AboutAlbum extends StatelessWidget {
  final Album album;
  static const quote='Polachek’s music feels like a living response to (and embodiment of) the overstimulation of modern times. ';

  const AboutAlbum({super.key, required this.album});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          children: [
            Text(
              album.artist,
              style: TextStyle(
                fontSize: 600.sp,
                height: 1,
                fontWeight: FontWeight.bold,
                color: Colors.grey[300],
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 400.sp),
                Padding(
                  padding: EdgeInsets.only(left: 300.w),
                  child: ConstrainedBox(constraints: BoxConstraints(maxWidth: 1400.w),
                    child: Text(
                      '" $quote "',
                      style: TextStyle(
                        fontSize: 70.sp,
                        fontWeight: FontWeight.bold,
                        color: Colors.black87,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 80.sp),
                Padding(
                  padding: EdgeInsets.only(left: 300.w),
                  child: ConstrainedBox(constraints: BoxConstraints(maxWidth: 1350.w),
                    child: Align(
                      alignment: Alignment.centerRight,
                      child: Text(
                        'Rolling Stone',
                        style: TextStyle(
                          fontSize: 150.sp,
                          fontFamily: 'RoyalAcidO',
                          color: Colors.black87,
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 700.sp),
                AlbumComment(album: album),
                const PrizeWidget(),
              ],
            ),
            Positioned(
              top: -100.sp,
              right: 0,
              child: Image.asset(
                fit: BoxFit.cover,
                'assets/images/caroline_pic1.png',
                height: 1900.sp,
              ),
            ),
            Positioned(
              top: 1100.sp,
              left: 0.w,
              child: Container(
                height: 800.sp,
                width: 2880.w,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      Colors.transparent,
                      Colors.black.withOpacity(0.5),
                      Colors.black,
                      Colors.black
                    ],
                    stops: const [0.1,0.3,0.6,1],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                  ),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}

class AlbumComment extends StatelessWidget {
  final Album album;
  const AlbumComment({super.key, required this.album});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      child: Padding(
        padding: EdgeInsets.only(top: 50.sp),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Image.asset(
              fit: BoxFit.cover,
              'assets/images/bunny.png',
              width: 1500.sp,
            ),
            Padding(
              padding: EdgeInsets.only(right: 200.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: EdgeInsets.only(right: 200.sp),
                    child: ConstrainedBox(constraints: BoxConstraints(maxWidth: 800.sp),
                      child: Wrap(
                        crossAxisAlignment: WrapCrossAlignment.center,
                        alignment: WrapAlignment.start,
                        children: [
                          Text(
                            'With With No.',
                            style: TextStyle(
                              fontSize: 100.sp,
                              fontFamily: 'Walfork',
                              fontWeight: FontWeight.w400,
                              color: Colors.white,
                            ),
                          ),
                          Text(
                            '1',
                            style: TextStyle(
                              fontSize: 150.sp,
                              fontFamily: 'Walfork',
                              fontWeight: FontWeight.w600,
                              color: Colors.red,
                            ),
                          ),
                          Text(
                            'Song Included.',
                            style: TextStyle(
                              fontSize: 100.sp,
                              fontFamily: 'Walfork',
                              fontWeight: FontWeight.w400,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 150.sp),
                  ConstrainedBox(constraints: BoxConstraints(maxWidth: 1000.sp),
                    child: Text(
                      'Caroline Polachek: “Bunny Is a Rider”',
                      softWrap: true,
                      style: TextStyle(
                        fontSize: 100.sp,
                        fontFamily: 'Walfork',
                        fontWeight: FontWeight.w400,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  SizedBox(height: 100.sp),
                  ConstrainedBox(constraints: BoxConstraints(maxWidth: 1000.sp),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          'Pitchfork Best Song of 2021',
                          style: TextStyle(
                            fontSize: 40.sp,
                            fontFamily: 'Walfork',
                            fontWeight: FontWeight.w400,
                            color: Colors.grey,
                          ),
                        ),
                        Icon(
                          Icons.arrow_forward_ios,
                          color: Colors.grey,
                          size: 40.sp,
                        ),
                        SizedBox(width: 120.sp),
                      ],
                    )
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

class PrizeWidget extends StatelessWidget{

  const PrizeWidget({super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 400.sp ,bottom: 400.sp),
      color: Colors.black,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.asset(
            fit: BoxFit.cover,
            'assets/images/desire_tour.png',
            width: 1500.sp,
          ),
          Padding(
            padding: EdgeInsets.only(right: 200.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: EdgeInsets.only(right: 200.sp),
                  child: ConstrainedBox(constraints: BoxConstraints(maxWidth: 800.sp),
                    child: Wrap(
                      crossAxisAlignment: WrapCrossAlignment.center,
                      alignment: WrapAlignment.start,
                      children: [
                        Text(
                          'Join The "Desire", to Win The Tour Tickets',
                          style: TextStyle(
                            fontSize: 100.sp,
                            fontFamily: 'Walfork',
                            fontWeight: FontWeight.w400,
                            color: Colors.white,
                          ),
                        ),
                        Text(
                          'For Free !',
                          style: TextStyle(
                            fontSize: 120.sp,
                            fontFamily: 'Walfork',
                            fontWeight: FontWeight.w600,
                            color: const Color(0xffbb1e10),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 100.sp),
                ConstrainedBox(constraints: BoxConstraints(maxWidth: 1000.sp),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        'View The "Desire" Action',
                        style: TextStyle(
                          fontSize: 40.sp,
                          fontFamily: 'Walfork',
                          fontWeight: FontWeight.w400,
                          color: Colors.grey,
                        ),
                      ),
                      Icon(
                        Icons.arrow_forward_ios,
                        color: Colors.grey,
                        size: 40.sp,
                      ),
                      SizedBox(width: 120.sp),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}