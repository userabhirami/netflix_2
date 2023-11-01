import 'package:flutter/material.dart';
import 'package:netflix/global_widgets/bottom_navigation.dart';
import 'package:netflix/data_base/database.dart';
import 'package:netflix/view/home_screen/home_screen.dart';
import 'package:netflix/utils/color_constant/color_constant.dart';
import 'package:netflix/utils/image_constant/image_constant.dart';
import 'package:flutter/material.dart';

class UserNameScreen extends StatelessWidget {
  const UserNameScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstant.primaryBlack,
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () {
              Navigator.pushAndRemoveUntil(
                  context,
                  MaterialPageRoute(builder: (context) => BottomNavigation()),
                  (route) => false);
            },
            icon: SizedBox(
              height: 24,
              width: 24,
              child: Image.asset(
                ImageConstant.pencil,
                color: ColorConstant.primaryWhite,
              ),
            ),
          ),
          SizedBox(
            width: 25,
          )
        ],
        backgroundColor: ColorConstant.primaryBlack,
        elevation: 0,
        toolbarHeight: 120,
        centerTitle: true,
        title: SizedBox(
          height: 38,
          width: 138,
          child: Image.asset(
              "assets/images/logos_netflix.png"), //here all kind of imgs will go
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(75),
        child: GridView.builder(
          itemCount: DataBase.MyUserList.length +
              1, //we used map for the name and text in imageconstant
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 25,
              mainAxisSpacing: 22,
              mainAxisExtent: 130),

          itemBuilder: (context, index) => index == DataBase.MyUserList.length
              ? Column(
                  children: [
                    Container(
                      height: 92,
                      width: 100,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(7),
                      ),
                      child: Image.asset("assets/images/Group 1.png"),
                    ),
                    SizedBox(
                      height: 6,
                    ),
                    Text(
                      "Add Profile",
                      style: TextStyle(color: Colors.white, fontSize: 14),
                    )
                  ],
                )
              : Padding(
                  padding: EdgeInsets.all(5.0),
                  child: Column(
                    children: [
                      Container(
                        height: 69,
                        width: 73,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8)),
                        child: Image.asset(
                          DataBase.MyUserList[index]["url"],
                          height: 121,
                          width: 100,
                        ),
                      ),
                      SizedBox(
                        height: 6,
                      ),
                      Text(
                        DataBase.MyUserList[index][Text],
                        style: TextStyle(color: Colors.white, fontSize: 14),
                      )
                    ],
                  ),
                ),
        ),
      ),
    );
  }
}

/*class UsernameScreen extends StatelessWidget {
  const UsernameScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstant.primaryBlack,
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () {
              Navigator.pushAndRemoveUntil(
                  context,
                  MaterialPageRoute(builder: (context) => BottomNavigation()),
                  (route) => false);
            },
            icon: SizedBox(
              height: 24,
              width: 24,
              child: Image.asset(
                ImageConstant.pencil,
                color: ColorConstant.primaryWhite,
              ),
            ),
          ),
          SizedBox(
            width: 25,
          )
        ],
        backgroundColor: ColorConstant.primaryBlack,
        elevation: 0,
        toolbarHeight: 120,
        centerTitle: true,
        title: SizedBox(
          height: 38,
          width: 138,
          child:
              Image.asset(ImageConstant.logo), //here all kind of imgs will go
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(8.0),
        child: GridView.builder(
          itemCount: DataBase.MyUserList
              .length, //we used map for the name and text in imageconstant
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 5,
            mainAxisSpacing: 5,
          ),

          itemBuilder: (context, index) => Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(
                DataBase.MyUserList[index]["url"],
                height: 121,
                width: 100,
              ),
              Text(
                DataBase.MyUserList[index][Text],
                style: TextStyle(color: Colors.white, fontSize: 14),
              )
            ],
          ),
        ),
      ),
    );
  }
}
*/