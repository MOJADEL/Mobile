import 'package:flutter/material.dart';
import 'package:mojadel2/colors/colors.dart';
import 'package:mojadel2/homepage/main_homepage.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  int _selectedIndex = 0;
  static const List<Widget> _widgetOptions = <Widget> [
    MainhomePage(),
    Text('내주변'),
    Text('요모조모'),
    Text('레시피'),
    Text('마이페이지'),
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title:Text('화정동', style: TextStyle(
              fontFamily: 'Inter',
              fontWeight: FontWeight.w300,
              color: Colors.black
          ),),
          backgroundColor: AppColors.mintgreen,
          actions: [
            IconButton(
              onPressed: (){},
              icon: Icon(Icons.search),
              color: Colors.black,),
            IconButton(
              onPressed: (){},
              icon: Icon(Icons.notifications),
              color: Colors.black,),
            IconButton(
              onPressed: (){},
              icon: Icon(Icons.menu),
              color: Colors.black,)
          ],
        ),
        body: Center(
          child: _widgetOptions.elementAt(_selectedIndex),
        ),
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.shifting,
          backgroundColor: Colors.white,
          selectedItemColor: AppColors.mintgreen,
          unselectedItemColor: Colors.grey,
          currentIndex: _selectedIndex,
          items:  <BottomNavigationBarItem>[
            BottomNavigationBarItem(icon: Icon(Icons.home), label: '홈'),
            BottomNavigationBarItem(icon: Icon(Icons.location_on_sharp), label: '내주변'),
            BottomNavigationBarItem(icon: Icon(Icons.chat_rounded), label: '요모조모'),
            BottomNavigationBarItem(icon: Icon(Icons.dinner_dining), label: '레시피'),
            BottomNavigationBarItem(
                icon: Image.asset('assets/images/img_doll_1.png',width: 30,height: 30,),
                activeIcon: Image.asset('assets/images/img_doll_1.png',width: 30,height: 30,),
                label: '마이페이지'),
          ],
          onTap: (int index){
            setState(() {
              _selectedIndex = index;
            });
          },
        ),
      ),
    );
  }
}