//轮播图组件
import 'package:flutter/cupertino.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class SwiperDiy extends StatelessWidget {
  SwiperDiy() : super();

  @override
  Widget build(BuildContext context) {
   //  适配屏幕
    ScreenUtil.instance = ScreenUtil(width: 750,height: 1334)..init(context);
    return Container(
//      设置的高度 宽度
      height: ScreenUtil().setHeight(330.0),
      width: ScreenUtil().setWidth(750),
      child: Swiper(
        itemBuilder: (BuildContext context, int index) {
          return Image.asset("images/banner.jpg",fit: BoxFit.fill,);
        },
        itemCount: 1,
        pagination: new SwiperPagination(),
        autoplay: true,
      ),
    );
  }
}
