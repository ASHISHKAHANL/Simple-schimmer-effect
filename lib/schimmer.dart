import 'package:flutter/material.dart';

class ShimmerBox extends StatelessWidget {
  const ShimmerBox({
    super.key,
    required this.flex,
    required this.widthfactor,
  });

  final int flex;
  final double widthfactor;

  @override
  Widget build(BuildContext context) {
    return Expanded(
        flex: flex,
        child: FractionallySizedBox(
          widthFactor: widthfactor,
          child: Container(
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: Colors.black.withOpacity(0.05),
              borderRadius: BorderRadius.circular(15),
            ),
          ),
        ));
  }
}

class ShimmerView extends StatelessWidget {
  const ShimmerView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ShimmerBox(flex: 6, widthfactor: 1),
        SizedBox(height: 10),
        ShimmerBox(flex: 1, widthfactor: 1),
        SizedBox(height: 10),
        ShimmerBox(flex: 1, widthfactor: 0.75),
        SizedBox(height: 20),

        /////////////////////////////////////////

        ShimmerBox(flex: 6, widthfactor: 1),
        SizedBox(height: 10),
        ShimmerBox(flex: 1, widthfactor: 1),
        SizedBox(height: 10),
        ShimmerBox(flex: 1, widthfactor: 0.75),
        SizedBox(height: 20),

        /////////////////////////////////////////

        ShimmerBox(flex: 6, widthfactor: 1),
        SizedBox(height: 10),
        ShimmerBox(flex: 1, widthfactor: 1),
        SizedBox(height: 10),
        ShimmerBox(flex: 1, widthfactor: 0.75),
        SizedBox(height: 20),
      ],
    );
  }
}

class Schimmer extends StatelessWidget {
  const Schimmer({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      //This App bar is optional as itndoes not play any role in schimmer effect
      // appBar: AppBar(),
      body: Padding(
        padding: EdgeInsets.all(10),
        child: ShimmerView(),
      ),
    );
  }
}
