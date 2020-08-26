//网格列表
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'TopNavigator.dart';
class GridViews extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List <TopNavigator> list = [TopNavigator(),TopNavigator(),TopNavigator(),TopNavigator(),TopNavigator(),TopNavigator(),TopNavigator(),TopNavigator()];
    return Container(
      height: ScreenUtil().setHeight(320),
//      容器边距
      padding: EdgeInsets.all(3.0),
//      padding:表示内边距，这个小伙伴们应该很熟悉。
//      crossAxisSpacing:网格间的空当，相当于每个网格之间的间距。
//      crossAxisCount:网格的列数，相当于一行放置的网格数量。
      child: GridView.count(
          crossAxisCount: 5,
          padding: EdgeInsets.all(4.0),
          children: list
      )
    );
  }
}


