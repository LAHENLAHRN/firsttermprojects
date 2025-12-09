import 'package:flutter/material.dart';

class GalleryPage extends StatelessWidget {
  const GalleryPage({super.key});

  final List<String> images = const [
    "assets/images/gallery-1.jpg",
    "assets/images/gallery-2.jpg",
    "assets/images/gallery-3.jpg",
    "assets/images/gallery-4.jpg",
    "assets/images/gallery-5.jpg",
    "assets/images/gallery-6.jpg",
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xFF2B2B2B), // خلفية رمادية داكنة
      child: GridView.builder(
        padding: const EdgeInsets.all(20),
        itemCount: images.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 15,
          crossAxisSpacing: 15,
        ),
        itemBuilder: (context, index) {
          return ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: Image.asset(images[index], fit: BoxFit.cover),
          );
        },
      ),
    );
  }
}
