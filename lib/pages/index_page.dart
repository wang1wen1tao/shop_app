import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import './home_page.dart';
import './cart_page.dart';
import './category_page.dart';
import './member_page.dart';

//StatelessWidget静态组件 StatefulWidget 动态组件
class IndexPage extends StatefulWidget {
  @override
  _IndexPageState createState() => _IndexPageState();
}

class _IndexPageState extends State<IndexPage> {
  // 底部导航组件
  final List <BottomNavigationBarItem> bottomTabs = [
        BottomNavigationBarItem(
          icon:Icon(CupertinoIcons.home),
          title:Text('首页')
        ),
        BottomNavigationBarItem(
          icon:Icon(CupertinoIcons.search),
          title:Text('分类')
        ),
        BottomNavigationBarItem(
          icon:Icon(CupertinoIcons.shopping_cart),
          title:Text('购物车')
        ),
        BottomNavigationBarItem(
          icon:Icon(CupertinoIcons.profile_circled),
          title: Text('会员中心')
        )
  ];
  final List tabPage = [
       HomePage(),
       CartPage(),
       CategoryPage(),
       MemberPage()
  ];

  int currentIndex = 0;
  var currentPage;
  
  @override
  void initState() {
    currentPage = tabPage[currentIndex]; 
    super.initState();
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
         bottomNavigationBar: BottomNavigationBar(
         type:BottomNavigationBarType.fixed,
         currentIndex: currentIndex,
         items: bottomTabs,
         onTap: (index){
          setState(() {
           currentIndex=index;
           currentPage =tabPage[currentIndex]; 
          });
        },
       ),
       body: currentPage,
    );
  }
}
