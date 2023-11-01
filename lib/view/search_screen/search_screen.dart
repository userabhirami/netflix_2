import 'package:flutter/material.dart';
import 'package:netflix/view/coming_soon_screen/coming_soon_screen.dart';
import 'package:netflix/utils/color_constant/color_constant.dart';
import 'package:netflix/utils/image_constant/image_constant.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstant.primaryBlack,
      body: Padding(
        padding: const EdgeInsets.only(top: 44),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Container(
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 51, 49, 49),
                  ),
                  width: double.infinity,
                  height: 52,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        width: 10,
                      ),
                      Image.asset(
                        Search.SearchScreenIcon,
                        height: 20,
                        width: 20,
                      ),
                      Text(
                        "Search for a show, movie, genre, etc",
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      Image.asset(Search.SearchScreenMic,
                          alignment: Alignment.topRight),
                      SizedBox(
                        width: 10,
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: EdgeInsets.only(left: 10),
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 20, left: 10),
                  child: Text(
                    "Top Searches",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 27,
                        fontWeight: FontWeight.w700),
                  ),
                ),
              ),
              Column(
                children: //the error "cant be assigned tolist<widget> coz of the[] n listview builder" itll neer use[]
                    List.generate(
                        TopSearches.topSearcheslist.length,
                        (index) => Container(
                              height: 80,
                              decoration: BoxDecoration(
                                color: Colors.grey,
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Container(
                                    height: 100,
                                    width: 150,
                                    child: Image.asset(TopSearches
                                        .topSearcheslist[index]["path"]),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(left: 30),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          TopSearches.topSearcheslist[index]
                                              ["name"],
                                          style: TextStyle(
                                              fontSize: 16,
                                              fontWeight: FontWeight.w400,
                                              color: Colors.white),
                                        ),
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(right: 0),
                                          child: SizedBox(
                                            width: 100,
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(right: 0),
                                          child: Image.asset(
                                            Search.CircularPlayButton,
                                          ),
                                        ) //for play button to all
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            )),
              ),
              IconButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => ComingSoonScreen()));
                  },
                  icon: Icon(
                    Icons.arrow_right_alt_rounded,
                    size: 20,
                    color: Colors.white,
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
