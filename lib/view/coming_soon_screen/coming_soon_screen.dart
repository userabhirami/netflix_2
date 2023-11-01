import 'package:flutter/material.dart';
import 'package:netflix/global_widgets/coming_soon_widget.dart';
import 'package:netflix/view/new_arrival_screen/new_arrival_screen.dart';

class ComingSoonScreen extends StatelessWidget {
  const ComingSoonScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leadingWidth: 200,
        leading: Padding(
          padding: const EdgeInsets.all(10),
          child: Row(
            children: [
              Container(
                height: 19,
                width: 19,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("assets/images/Group 49.png"))),
                //child: Image.asset("assets/images/Group 49.png"),
              ),
              SizedBox(
                width: 10,
              ),
              Text(
                "Notifications",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 16.906,
                    fontWeight: FontWeight.w700),
              ),
            ],
          ),
        ),
        backgroundColor: Colors.black,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Container(
          color: Colors.black,
          child: Column(
            children: [
              SizedBox(
                height: 0,
              ),
              NewArrivalScreen(
                title: "New Arrival",
                subtitle: "El Chapo",
                date: "Nov 6",
                image: AssetImage("assets/images/Rectangle 20.png"),
              ),
              NewArrivalScreen(
                  image: AssetImage("assets/images/Rectangle 21 (4).png"),
                  title: "New Arrival",
                  subtitle: "Peaky Blinders",
                  date: "Nov 6"),
              SizedBox(
                height: 20,
              ),
              ComingSoonScreenWidget(
                title: "Castle & Castle",
                ComingSoonImage:
                    AssetImage("assets/images/Rectangle 22 (3).png"),
              ),
              ComingSoonScreenWidget(
                title: "Pretty Things",
                ComingSoonImage:
                    AssetImage("assets/images/Rectangle 22 (4).png"),
              ),
              ComingSoonScreenWidget(
                title: "Faster",
                ComingSoonImage:
                    AssetImage("assets/images/Rectangle 22 (5).png"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
