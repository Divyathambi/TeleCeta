import 'package:flutter/material.dart';

class SpecialityGrid extends StatelessWidget {
  final String imageUrl;
  final String title;
  // final Function navigateToPage;

  const SpecialityGrid({Key? key, required this.imageUrl, required this.title})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: GestureDetector(
        onTap: () {},
        child: Card(
          semanticContainer: true,
          elevation: 4.0,
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              children: [
                GridTile(
                  child: Image.asset(imageUrl),
                ),
                const SizedBox(height: 5),
                Text(
                  title,
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                      fontFamily: "NunitoSemiBold", color: Colors.black),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
