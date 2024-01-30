import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:netflix/view/coming_soon_screen/coming_soon_screen.dart';
import 'package:netflix/global_widgets/my_movieslist_builder.dart';
import 'package:netflix/view/search_screen/search_screen.dart';
import 'package:netflix/utils/color_constant/color_constant.dart';
import 'package:netflix/utils/image_constant/image_constant.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    TextStyle toptab = TextStyle(
        color: ColorConstant.primaryWhite,
        fontSize: 17,
        fontWeight: FontWeight.w500);
    return Scaffold(
      backgroundColor: ColorConstant.primaryBlack,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                CarouselSlider(
                  items: [
                    Container(
                      height: 500,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage(
                                ImageConstant.homescreen_containerimage),
                            fit: BoxFit.cover),
                        color: const Color.fromARGB(255, 59, 251, 65),
                      ),
                    ),
                  ],
                  options: CarouselOptions(
                      enlargeCenterPage:
                          true, //center page pop chyth nikan so viewportfraction 0.somthing kodknm
                      autoPlay: true,
                      scrollDirection: Axis.horizontal,
                      viewportFraction: .7),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        SizedBox(
                          width: 53,
                          height: 57,
                          child: Image.asset(ImageConstant.logoN),
                        ),
                        Expanded(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Text(
                                "TV Shows",
                                style:
                                    toptab, //instead of down lines,v can use 1 term for all
                              ),
                              Text(
                                "Movies",
                                style: toptab,
                              ),
                              Text(
                                "MyList",
                                style: toptab,
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 300),
                      child: Text(
                        "#2 in Nigeria Today",
                        style: TextStyle(color: ColorConstant.primaryWhite),
                      ),
                    ),
                  ],
                ),
                Container(
                  height: 415,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(colors: [
                      ColorConstant.primaryBlack
                          .withOpacity(.4), // image gradiant
                      ColorConstant.primaryBlack.withOpacity(.1)
                    ]),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 15),
              child: Center(
                child: Container(
                  width: 249,
                  height: 45,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          SizedBox(
                            height: 24,
                            width: 24,
                            child: Image.asset(ImageConstant.mylistPlus),
                          ),
                          Text(
                            "MyList",
                            style: TextStyle(
                                fontSize: 13,
                                fontWeight: FontWeight.w400,
                                color: ColorConstant.primaryWhite),
                          )
                        ],
                      ),
                      Container(
                        height: 45,
                        width: 111,
                        decoration: BoxDecoration(
                            //EDITED AFTER COMING BACK TO HOSTEL 191023
                            borderRadius: BorderRadius.circular(5.625),
                            color: ColorConstant.primaryWhite),
                        child: SizedBox(
                          width: 72,
                          height: 30,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              SizedBox(
                                width: 18,
                                height: 22,
                                child: Image.asset(ImageConstant.playArrow),
                              ),
                              SizedBox(
                                // width: 39,
                                //  height: 30,
                                child: Text(
                                  "Play",
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w600),
                                ), //EDITED AFTER COMING BACK TO HOSTEL 191023
                              )
                            ],
                          ),
                        ),
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          SizedBox(
                            height: 24,
                            width: 24,
                            child: Image.asset(ImageConstant.info),
                          ),
                          Text(
                            "Info",
                            style: TextStyle(
                                color: ColorConstant.primaryWhite,
                                fontSize: 13,
                                fontWeight: FontWeight.w400),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
            MyMoviesListBuilder(
              title: "Previews",
              shape: BoxShape.circle,
              ImageList: ImageList.Prev,
            ),
            MyMoviesListBuilder(
              title: "Continue Watching for Emenalo",
              shape: BoxShape.rectangle,
              ImageList: ImageList.Contnue,
            ),
            MyMoviesListBuilder(
              title: "Popular on Netflix",
              shape: BoxShape.rectangle,
              ImageList: ImageList.Popular,
            ),
            MyMoviesListBuilder(
              title: "Trending Now",
              shape: BoxShape.rectangle,
              ImageList: ImageList.Trending,
            ),
            MyMoviesListBuilder(
              title: "Top 10 in Nigeria Today",
              shape: BoxShape.rectangle,
              ImageList: ImageList.Top10Nigeria,
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => HomeScreen(),
                      ));
                },
                child: Text("Press Here"))
          ],
        ),
      ),
    );
  }
}
