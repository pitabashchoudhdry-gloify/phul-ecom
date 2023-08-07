import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class Carousel extends StatefulWidget {
  const Carousel({super.key});

  @override
  State<Carousel> createState() => _CarouselState();
}

class _CarouselState extends State<Carousel> {
  final List<String> imgList = [
    'https://res.cloudinary.com/interflora/f_auto,q_auto,t_pnopt48prodlp/banners/same_day_delivery_d_interflora_banner_20230427.jpg',
    'https://res.cloudinary.com/interflora/f_auto,q_auto,t_pnopt48prodlp/banners/bespoke_hampers_d_interflora_banner_20230427.jpg',
    'https://res.cloudinary.com/interflora/f_auto,q_auto,t_pnopt48prodlp/banners/birthday_d_interflora_banner_20230427.jpg',
    'https://res.cloudinary.com/interflora/f_auto,q_auto,t_pnopt48prodlp/banners/anniversary_d_interflora_banner_20230418.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      items: imgList.map((e) {
        return Container(
          margin: const EdgeInsets.all(5.0),
          child: ClipRRect(
              borderRadius: const BorderRadius.all(Radius.circular(5.0)),
              child: Image.network(
                e,
                fit: BoxFit.fill,
                width: 1000.0,
                height: 200,
              )),
        );
      }).toList(),
      options: CarouselOptions(
        autoPlay: true,
        enlargeCenterPage: false,
      ),
    );
  }
}
