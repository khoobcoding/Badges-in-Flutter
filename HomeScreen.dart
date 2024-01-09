import 'package:flutter/material.dart';
import 'package:badges/badges.dart' as badges;

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int count=0;
  bool isvisible=false;
  launchnotification(){
    count==0?isvisible=!isvisible:0;
    count++;
    setState(() {
      
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.teal,
          centerTitle: true,
          title: const Text(
            'Badges App',
            style: TextStyle(
                fontSize: 30, color: Colors.white, fontWeight: FontWeight.bold),
          ),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Badge(
                label: Text(count.toString()),
                backgroundColor: Colors.teal,
                smallSize: 10,largeSize: 30,
                alignment: Alignment.bottomLeft,
                isLabelVisible: isvisible,
                // textColor: Colors.black,
                child: const Icon(
                  Icons.shopping_cart_outlined,
                  size: 100,
                  color: Color.fromARGB(255, 80, 79, 78),
                ),
              ),
              badges.Badge(
                badgeContent: Text(count.toString(),style: TextStyle(color: Colors.white),),
                badgeStyle: badges.BadgeStyle(badgeColor: Colors.red,
                shape: badges.BadgeShape.circle,
                badgeGradient: badges.BadgeGradient.linear(colors: [Colors.amber,
                Colors.red])),
                showBadge: isvisible,
                badgeAnimation: badges.BadgeAnimation.slide(),
                ignorePointer: false,
                onTap: () {
                  launchnotification();
                },
                child: const Icon(
                  Icons.notifications,
                  size: 100,
                  color: Color.fromARGB(255, 37, 212, 156),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              MaterialButton(
                  color: const Color.fromARGB(255, 255, 67, 67),
                  minWidth: 250,
                  height: 40,
                  elevation: 3,
                  splashColor: const Color.fromARGB(255, 246, 85, 73),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  onPressed: () {
                    launchnotification();
                  },
                  child: const Text(
                    'Launch Notification',
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  )),
            ],
          ),
        ));
  }
}
