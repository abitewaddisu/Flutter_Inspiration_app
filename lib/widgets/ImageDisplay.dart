import 'package:flutter/material.dart';

class ImageDisplay extends StatelessWidget {
  final AssetImage image;
  const ImageDisplay({super.key, required this.image});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200.0,
      height: 250.0,
      margin: EdgeInsets.symmetric(horizontal: 10.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30.0),
        image: DecorationImage(
          image: image,
          fit: BoxFit.cover
        ),
      ),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30.0),
          gradient: LinearGradient(
            begin: Alignment.bottomRight,
            colors: [
              Colors.black.withOpacity(0.8),
              Colors.black.withOpacity(0.2),
            ]
          )
        )
      )
    );
  }
}