import 'package:flutter/material.dart';

class CustomContainer2 extends StatelessWidget {
  final String imagePath;
  final String title;
  final double width;
  final double height;
  final Color? color;
  final bool isImage;
  final double borderRadius;
  final Color titleColor;

  const CustomContainer2({
    Key? key,
    required this.imagePath,
    required this.title,
    this.width = 50.0,
    this.height = 50.0,
    this.color,
    this.isImage = true,
    this.borderRadius = 15.0,
    this.titleColor = Colors.white,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: width,
          height: height,
          decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(borderRadius),
            image: isImage
                ? DecorationImage(
              image: AssetImage(imagePath),
              fit: BoxFit.cover,
            )
                : null,
          ),
          child: !isImage
              ? Center(
            child: Text(
              title,
              style: const TextStyle(fontSize: 15),
            ),
          )
              : null,
        ),
        const SizedBox(height: 8.0), // Equivalent of SizedBoxes.smallSizedBox
        Text(
          title,
          style: TextStyle(color: titleColor),
        ),
      ],
    );
  }
}
