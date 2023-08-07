import 'package:flutter/material.dart';

class OrderSummary extends StatefulWidget {
  const OrderSummary({super.key});

  @override
  State<OrderSummary> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<OrderSummary> {
  @override
  Widget build(BuildContext context) {
    final sWidth = MediaQuery.of(context).size.width;
    // final sHeight = MediaQuery.of(context).size.height;

    return SizedBox(
      width: sWidth,
      child: Column(
        children: [
          const SizedBox(
            height: 10,
          ),
          Container(
            color: Colors.white,
            width: sWidth,
            height: 80,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Your Contact Details *",
                        style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                              fontSize: 20,
                              color: Colors.black,
                            ),
                      ),
                      const Text(
                        "(pitabash choudhdry, 9583871974)",
                      ),
                    ],
                  ),
                  const Spacer(),
                  const Icon(
                    Icons.add,
                    size: 30,
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Container(
            color: Colors.white,
            width: sWidth,
            child: ListTile(
              contentPadding: const EdgeInsets.all(0.0),
              leading: const Icon(
                Icons.stacked_bar_chart_outlined,
              ),
              title: const Text(
                "Add a Personalized Message",
              ),
              trailing: TextButton(
                onPressed: () {},
                child: const Text("compose"),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
