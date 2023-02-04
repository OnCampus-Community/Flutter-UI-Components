import 'package:flutter/material.dart';

class BottomNavBar3 extends StatelessWidget {
  const BottomNavBar3({Key? key}) : super(key: key);

  final orangeColor = const Color(0xffFF8527);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          BottomAppBar(
            color: Colors.white,
            child: SizedBox(
              height: 56,
              width: MediaQuery.of(context).size.width,
              child: Padding(
                padding: const EdgeInsets.only(left: 25.0, right: 25.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconBottomBar3(
                        text: "Home",
                        icon: Icons.home_outlined,
                        selected: true,
                        onPressed: () {}),
                    IconBottomBar3(
                        text: "Search",
                        icon: Icons.search_outlined,
                        selected: false,
                        onPressed: () {}),
                    IconBottomBar3(
                        text: "Add",
                        icon: Icons.add_outlined,
                        selected: false,
                        onPressed: () {}),
                    IconBottomBar3(
                        text: "Cart",
                        icon: Icons.local_grocery_store_outlined,
                        selected: false,
                        onPressed: () {}),
                    IconBottomBar3(
                        text: "Calendar",
                        icon: Icons.date_range_outlined,
                        selected: false,
                        onPressed: () {})
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class IconBottomBar3 extends StatelessWidget {
  const IconBottomBar3(
      {Key? key,
      required this.text,
      required this.icon,
      required this.selected,
      required this.onPressed})
      : super(key: key);
  final String text;
  final IconData icon;
  final bool selected;
  final Function() onPressed;

  final orangeColor = const Color(0xffFF8527);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        IconButton(
          onPressed: onPressed,
          icon: Icon(
            icon,
            size: 25,
            color: selected ? orangeColor : Colors.black54,
          ),
        ),
      ],
    );
  }
}

class IconBottomBarExtra extends StatelessWidget {
  const IconBottomBarExtra(
      {Key? key,
      required this.text,
      required this.icon,
      required this.selected,
      required this.onPressed})
      : super(key: key);
  final String text;
  final IconData icon;
  final bool selected;
  final Function() onPressed;
  final orangeColor = const Color(0xffFF8527);
  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      backgroundColor: orangeColor,
      child: IconButton(
        onPressed: onPressed,
        icon: Icon(
          icon,
          size: 25,
          color: Colors.white,
        ),
      ),
    );
  }
}
