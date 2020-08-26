import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TopNavigator extends StatelessWidget {
  final List navigatorList;
  TopNavigator({Key key,this.navigatorList}) :super(key:key);
  @override
  Widget build(BuildContext context) {
    return InkWell(
         onTap: (){
           print('点击了导航条');
         },
         child: Column(
           children: <Widget>[
              Image.asset("images/b.png",width: ScreenUtil().setWidth(95)),
              Text('导航')
           ],
         ),
    );
  }
}
