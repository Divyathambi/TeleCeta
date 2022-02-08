import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

class SpecialityGrid extends StatelessWidget {
  final String imageUrl;
  final String title;
  final PageRouteInfo route;

  const SpecialityGrid({
    Key? key,
    required this.imageUrl,
    required this.title,
    required this.route,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: GestureDetector(
        onTap: () {
          AutoRouter.of(context).popAndPush(route);
        },
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
