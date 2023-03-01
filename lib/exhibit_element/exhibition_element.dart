import 'package:flutter/cupertino.dart';

import '../exhibit_model/exhibit.dart';

class ExhibitionElement extends StatelessWidget {
  final Exhibit exhibit;

  const ExhibitionElement({required this.exhibit, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: exhibit.images.length,
        itemBuilder: (context, imageIndex) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 7),
            child: Column(
              children: [
                Text(exhibit.title),
                Row(
                  children: [
                    Image.network(
                      exhibit.images[imageIndex],
                      fit: BoxFit.contain,
                      height: 140,
                      width: 100,
                      errorBuilder: (context, error, stackTrace) {
                        return Image.asset(
                          "assets/error_logo.png",
                          height: 120,
                          width: 85,
                        );
                      },
                    ),
                  ],
                ),
              ],
            ),
          );
        });
  }
}
