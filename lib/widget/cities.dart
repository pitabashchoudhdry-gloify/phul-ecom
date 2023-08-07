import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:phul_ecom_partner/data/static_data/static_data.dart';
import 'package:transparent_image/transparent_image.dart';

class AvailableCity extends StatelessWidget {
  const AvailableCity({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Wrap(
        spacing: 5,
        children: StaticData.availableCity.map((e) {
          return InkWell(
            onTap: () {
              // ScaffoldMessenger.of(context)
              //     .showSnackBar(const SnackBar(content: Text("working")));
              context.goNamed('login');
            },
            // child: Image.network(
            //   e,
            //   height: 100,
            // ),
            child: FadeInImage.memoryNetwork(
              //e,
              height: 100, image: e, placeholder: kTransparentImage,
            ),
          );
        }).toList(),
      ),
    );
  }
}
