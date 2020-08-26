import 'package:flutter/material.dart';
import 'package:app/api/home.dart';
import 'package:app/components/swiper.dart';
import 'package:app/components/GridView.dart';

//首页
// ignore: must_be_immutable
class HomePage extends StatefulWidget {
  _HomePage createState() => _HomePage();
}

class _HomePage extends State<HomePage> {
  String showText = '';
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('百姓生活')),
        body: FutureBuilder(
          builder: (context, snapshot) {
            return Column(
              children: <Widget>[
//                轮播图组件  导航组件
               SwiperDiy(),
                GridViews(),
              ],
            );
          },
        ));
  }
}
