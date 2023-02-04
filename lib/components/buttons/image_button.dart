import 'package:flutter/material.dart';

class ImageButton extends StatelessWidget {
  final void Function() onPressed;
  final Image iconImage;
  final Text text;

  const ImageButton(
      {super.key,
      required this.onPressed,
      required this.iconImage,
      required this.text});
  @override
  Widget build(BuildContext context) {
    return Container(
        height: 54,
        margin: const EdgeInsets.all(15),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: Colors.white,
        ),
        child: TextButton(
          style: ButtonStyle(
              shape: MaterialStateProperty.all(RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15)))),
          onPressed: onPressed,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              iconImage,
              const SizedBox(
                width: 10,
              ),
              text,
            ],
          ),
        ));
  }
}
