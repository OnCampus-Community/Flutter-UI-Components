// No state included
import 'package:flutter/material.dart';

class BottomNavBar5 extends StatefulWidget {
  final Color primaryColor;
  final Color secondaryColor;
  final Color backgroundColor;

  BottomNavBar5(
      {this.primaryColor = Colors.green,
      this.secondaryColor = Colors.white,
      Key? key})
      : backgroundColor = Colors.black.withOpacity(.5),
        super(
          key: key,
        );

  @override
  BottomNavBar5State createState() => BottomNavBar5State();
}

class BottomNavBar5State extends State<BottomNavBar5> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double height = 56;

    final primaryColor = widget.primaryColor;
    final secondaryColor = widget.secondaryColor;
    final backgroundColor = widget.backgroundColor;

    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          BottomAppBar(
            color: Colors.transparent,
            elevation: 0,
            child: Stack(
              children: [
                CustomPaint(
                  size: Size(size.width, height + 6),
                  painter: BottomNavCurve(backgroundColor: backgroundColor),
                ),
                Center(
                  heightFactor: 0.6,
                  child: FloatingActionButton(
                      backgroundColor: primaryColor,
                      elevation: 0.1,
                      onPressed: () {},
                      child: const Icon(Icons.landscape)),
                ),
                SizedBox(
                  height: height,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      NavIcon(
                        text: "Home",
                        icon: Icons.home_outlined,
                        selected: true,
                        onPressed: () {},
                        defaultColor: secondaryColor,
                        selectedColor: primaryColor,
                      ),
                      NavIcon(
                        text: "Search",
                        icon: Icons.search_outlined,
                        selected: false,
                        onPressed: () {},
                        defaultColor: secondaryColor,
                        selectedColor: primaryColor,
                      ),
                      const SizedBox(width: 56),
                      NavIcon(
                          text: "Add",
                          icon: Icons.local_grocery_store_outlined,
                          selected: false,
                          onPressed: () {},
                          defaultColor: secondaryColor,
                          selectedColor: primaryColor),
                      NavIcon(
                        text: "Calendar",
                        icon: Icons.date_range_outlined,
                        selected: false,
                        onPressed: () {},
                        selectedColor: primaryColor,
                        defaultColor: secondaryColor,
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class BottomNavCurve extends CustomPainter {
  BottomNavCurve({this.backgroundColor = Colors.white, this.insetRadius = 38});

  Color backgroundColor;
  double insetRadius;
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint()
      ..color = backgroundColor
      ..style = PaintingStyle.fill;
    Path path = Path()..moveTo(0, 12);

    double insetCurveBeginnningX = size.width / 2 - insetRadius;
    double insetCurveEndX = size.width / 2 + insetRadius;
    double transitionToInsetCurveWidth = size.width * .05;
    path.quadraticBezierTo(size.width * 0.20, 0,
        insetCurveBeginnningX - transitionToInsetCurveWidth, 0);
    path.quadraticBezierTo(
        insetCurveBeginnningX, 0, insetCurveBeginnningX, insetRadius / 2);

    path.arcToPoint(Offset(insetCurveEndX, insetRadius / 2),
        radius: const Radius.circular(10.0), clockwise: false);

    path.quadraticBezierTo(
        insetCurveEndX, 0, insetCurveEndX + transitionToInsetCurveWidth, 0);
    path.quadraticBezierTo(size.width * 0.80, 0, size.width, 12);
    path.lineTo(size.width, size.height + 56);
    path.lineTo(
        0,
        size.height +
            56); //+56 here extends the navbar below app bar to include extra space on some screens (iphone 11)
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}

class NavIcon extends StatelessWidget {
  const NavIcon(
      {Key? key,
      required this.text,
      required this.icon,
      required this.selected,
      required this.onPressed,
      this.selectedColor = const Color(0xffFF8527),
      this.defaultColor = Colors.black54})
      : super(key: key);
  final String text;
  final IconData icon;
  final bool selected;
  final Function() onPressed;
  final Color defaultColor;
  final Color selectedColor;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        IconButton(
          onPressed: onPressed,
          splashColor: Colors.transparent,
          highlightColor: Colors.transparent,
          icon: Icon(
            icon,
            size: 25,
            color: selected ? selectedColor : defaultColor,
          ),
        ),
      ],
    );
  }
}
