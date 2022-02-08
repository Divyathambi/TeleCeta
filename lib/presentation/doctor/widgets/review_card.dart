import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:teleceta_patients/domain/doctor/doctor.dart';
import 'package:teleceta_patients/domain/doctor/reviews.dart';

class ReviewCard extends StatelessWidget {
  final Reviews reviews;
  const ReviewCard({Key? key, required this.reviews}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const headingTextStyle = TextStyle(
        fontFamily: 'NunitoBold',
        fontSize: 16,
        color: Color.fromRGBO(3, 4, 94, 1));
    const descriptionTextStyle = TextStyle(
        fontFamily: 'NunitoSemiBold',
        fontSize: 14,
        color: Color.fromRGBO(0, 119, 182, 1));
    return SizedBox(
      height: MediaQuery.of(context).size.height / 4,
      width: MediaQuery.of(context).size.width / 2,
      child: Padding(
        padding: const EdgeInsets.all(4.0),
        child: Card(
          semanticContainer: true,
          elevation: 5.0,
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(reviews.name!, style: headingTextStyle),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: RatingBar.builder(
                      itemSize: 15,
                      initialRating: reviews.rating!.toDouble(),
                      minRating: 1,
                      direction: Axis.horizontal,
                      allowHalfRating: true,
                      itemCount: 5,
                      itemPadding: const EdgeInsets.symmetric(horizontal: 4),
                      itemBuilder: (context, _) {
                        return const Icon(Icons.star,
                            color: Color.fromRGBO(0, 119, 182, 1));
                      },
                      onRatingUpdate: (rating) {
                        print(rating);
                      }),
                ),
                Text(
                  reviews.content!,
                  style: descriptionTextStyle,
                  overflow: TextOverflow.clip,
                  softWrap: true,
                  maxLines: 3,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
