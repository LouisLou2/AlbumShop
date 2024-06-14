import 'package:album_detail/album_repo.dart';
import 'package:album_detail/page/about_album.dart';
import 'package:album_detail/page/album_general.dart';
import 'package:album_detail/widget/more_product.dart';
import 'package:album_detail/widget/pure_text_button.dart';
import 'package:album_detail/widget/tail_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'entity/album.dart';
import 'entity/artifact.dart';

class AlbumDetail extends StatefulWidget{
  const AlbumDetail({super.key});

  @override
  State<StatefulWidget> createState() => _AlbumDetailState();
}

class _AlbumDetailState extends State<AlbumDetail> {
  Album? album;
  List<Artifact>? products;

  @override
  void initState() {
    super.initState();
    _loadAlbum();
  }
  Future<void> _loadAlbum() async {
    final album = await AlbumRepo.getAlbums();
    final products = await AlbumRepo.getMoreProducts();
    setState(() {
      this.album = album;
      this.products = products;
    });
  }
  @override
  Widget build(BuildContext context) {
    return album == null ? const Center(child: CircularProgressIndicator(color: Colors.black87,)) :
    Material(
      color: Colors.transparent,
      child: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 20),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Spacer(flex: 9),
                Image.asset(
                  album!.artistNameImageUrl,
                  height: 170.w,
                ),
                const Spacer(flex: 8),
                const Wrap(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(right: 20),
                      child: Icon(
                        Icons.search_sharp,
                        size: 25,
                      ),
                    ),
                    Icon(
                      Icons.shopping_bag_outlined,
                      size: 25,
                    ),
                    SizedBox(
                      width: 40,
                    ),
                  ],
                ),
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 6),
                child: PureTextButton(text: 'Apparel', onPressed: (){}),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 6),
                child: PureTextButton(text: 'Music', onPressed: (){}),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 6),
                child: PureTextButton(text: 'Accessories', onPressed: (){}),
              ),
            ],
          ),
          AlbumGeneral(album: album!),
          SizedBox(
            height: 200.h,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'You May Also Like',
                style: TextStyle(
                  fontSize: 60.sp,
                  fontWeight: FontWeight.w600,
                  wordSpacing: 10.sp,
                ),
              ),
              SizedBox(width: 50.w,),
              Align(
                alignment: Alignment.centerRight,
                child: TextButton(
                  onPressed: (){},
                  style: TextButton.styleFrom(
                    padding: EdgeInsets.symmetric(horizontal: 20.w,vertical: 10.h),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(1.5),
                      side: const BorderSide(
                        color: Colors.black87,
                        width: 1,
                      ),
                    ),
                  ),
                  child: Text(
                    'View All',
                    style: TextStyle(
                      fontSize: 40.sp,
                      color: Colors.black87,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              )
            ],
          ),
          SizedBox(height: 200.h,),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 200.w),
            child: MoreProductWidget(products: products!),
          ),
          SizedBox(
            height: 200.h,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'More About The Album',
                style: TextStyle(
                  fontSize: 60.sp,
                  fontWeight: FontWeight.w600,
                  wordSpacing: 10.sp,
                ),
              ),
            ],
          ),
          SizedBox(height: 300.h,),
          AboutAlbum(album: album!),
          const TailWidget(),
        ],
      ),
    );
  }
}