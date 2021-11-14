import 'package:flutter/material.dart';
import 'package:teleceta_patients/presentation/carousel_pages/doctor_carousel.dart';
import 'package:teleceta_patients/presentation/carousel_pages/laboratory_carousel.dart';
import 'package:teleceta_patients/presentation/carousel_pages/medicine_carousel.dart';

class CarouselMainPage extends StatelessWidget {
  const CarouselMainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final PageController controller = PageController(initialPage: 0);
    return PageView(
      scrollDirection: Axis.horizontal,
      controller: controller, 
      children: const <Widget>[
        DoctorCarousel(), 
        MedicineCarousel(), 
        LaboratoryCarousel()
      ],
    );
  }
}