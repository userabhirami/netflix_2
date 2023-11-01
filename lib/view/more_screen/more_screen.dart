import 'package:flutter/material.dart';
import 'package:netflix/data_base/database.dart';
import 'package:netflix/utils/color_constant/color_constant.dart';

class MoreScreen extends StatelessWidget {
  const MoreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstant.primaryBlack,
      body: Padding(
        padding: const EdgeInsets.only(top: 82),
        child: Column(
          children: [
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: List.generate(
                  DataBase.MyUserList.length + 1,
                  (index) => index == DataBase.MyUserList.length
                      ? Container(
                          height: 69,
                          width: 73,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            // border: Border.all(color: Colors.grey)
                          ),
                          child: Image.asset("assets/images/Group 82.png"),
                        )
                      : Padding(
                          padding: const EdgeInsets.all(4),
                          child: Column(
                            children: [
                              Container(
                                height: 69,
                                width: 73,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5)),
                                child: Image.asset(
                                  DataBase.MyUserList[index]["url"],
                                  fit: BoxFit.cover,
                                ),
                              ),
                              SizedBox(
                                height: 6,
                              ),
                              Text(
                                DataBase.MyUserList[index][Text],
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 13,
                                    fontWeight: FontWeight.w400),
                              )
                            ],
                          ),
                        ),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ), //self
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  "assets/images/Vector (2).png",
                ),
                SizedBox(
                  width: 5,
                ),
                Text(
                  "Manage Profiles",
                  style: TextStyle(
                      fontSize: 14.722,
                      fontWeight: FontWeight.w500,
                      color: Colors.white),
                )
              ],
            ),
            SizedBox(
              height: 10,
            ),

            Container(
              height: 247,
              width: double.infinity,
              color: Color(0xff1A1A1A),
              child: Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Column(
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Image.asset(
                          "assets/images/Group 71.png",
                        ),
                        SizedBox(width: 5),
                        Text(
                          "Tell Friends About Netflix.",
                          style: TextStyle(
                              fontSize: 19.634,
                              fontWeight: FontWeight.w700,
                              color: Colors.white),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 12.32,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sit quam dui,vivamusbibendum ut. A morbi mi tortor ut felis non accumsan accumsan quis. Massa,",
                        style: TextStyle(
                            fontSize: 10.781,
                            fontWeight: FontWeight.w500,
                            color: Colors.white),
                      ),
                    ),
                    SizedBox(
                      height: 11,
                    ),
                    Text(
                      "Terms & Conditions                                                                                                         ",
                      style: TextStyle(
                        fontSize: 10.781,
                        fontWeight: FontWeight.w500,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Row(
                      children: [
                        Container(
                          width: 250,
                          height: 37,
                          color: Colors.black,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Container(
                          width: 96,
                          height: 37,
                          color: Colors.white,
                          child: Center(
                            child: Text(
                              "Copy Link",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 17.059,
                                  fontWeight: FontWeight.w600),
                            ),
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: Container(
                            height: 33.6,
                            width: 36,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Color(0xff2CB742),
                              image: DecorationImage(
                                image: AssetImage("assets/images/Group 93.png"),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 70,
                        ),
                        Container(
                          height: 33.6,
                          width: 36,
                          decoration: BoxDecoration(
                            shape: BoxShape.rectangle,
                            color: Color(0xff395185),
                            image: DecorationImage(
                              image: AssetImage(
                                  "assets/images/logos_facebook.png"),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 70,
                        ),
                        Container(
                          height: 33.6,
                          width: 36,
                          decoration: BoxDecoration(
                            shape: BoxShape.rectangle,
                            color: Colors.white,
                            image: DecorationImage(
                              image:
                                  AssetImage("assets/images/Gmail-logo 1.png"),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 70,
                        ),
                        Column(
                          children: [
                            Container(
                              height: 37,
                              width: 37,
                              decoration: BoxDecoration(
                                shape: BoxShape.rectangle,
                                color: Color.fromARGB(255, 25, 17, 17),
                                image: DecorationImage(
                                  image: AssetImage(
                                    "assets/images/bx_bx-dots-vertical-rounded.png",
                                  ),
                                ),
                              ),
                            ),
                            Text(
                              "More",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 14.722,
                                  fontWeight: FontWeight.w500),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),

            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Container(
                child: Row(
                  children: [
                    Container(
                      height: 33,
                      width: 33,
                      decoration: BoxDecoration(
                        shape: BoxShape.rectangle,
                        color: Color.fromARGB(255, 25, 17, 17),
                        image: DecorationImage(
                          image: AssetImage(
                            "assets/images/noto-v1_check-mark-button.png",
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      "My List",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 14.722,
                          fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ), ////

            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "App Settings",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 14.722,
                            fontWeight: FontWeight.w500),
                      ),
                      SizedBox(
                        height: 26,
                      ),
                      Text(
                        "Account",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 14.722,
                            fontWeight: FontWeight.w500),
                      ),
                      SizedBox(
                        height: 26,
                      ),
                      Text(
                        "Help",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 14.722,
                            fontWeight: FontWeight.w500),
                      ),
                      SizedBox(
                        height: 26,
                      ),
                      Text(
                        "Log Out",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 14.722,
                            fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
