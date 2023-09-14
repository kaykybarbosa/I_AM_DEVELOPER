import 'package:flutter/material.dart';

class ShowImages extends StatelessWidget {
  const ShowImages({required this.images, super.key});

  final List images;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Wrap(
          children: images.asMap().entries.map((e) {
            String imageUri = e.value.imageUri;

            List<Widget> children = [];

            children.add(
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 15.0,
                  vertical: 10.0,
                ),
                child: Image(
                  image: AssetImage(imageUri),
                  width: 60.0,
                ),
              ),
            );

            return Column(
              mainAxisSize: MainAxisSize.min,
              children: children,
            );
          }).toList(),
        ),
        const Divider(
          thickness: 2.0,
          color: Color.fromARGB(255, 215, 215, 215),
          indent: 25.0,
        ),
      ],
    );
  }
}
