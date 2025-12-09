import 'package:flutter/material.dart';

class TestimonialsPage extends StatelessWidget {
  const TestimonialsPage({super.key});

  final List<Map<String, String>> testimonials = const [
    {"name": "سارة", "image": "assets/images/user-1.jpg", "feedback": "أحببت التحميص الفرنسي متوازن وغني تماماََ سأطلبه مرة اخرى"},
    {"name": "جيمس", "image": "assets/images/user-2.jpg", "feedback": "مزيج إسبريسو رائع! نكهة ناعمة وغنية شحن سريع أيضاََ"},
    {"name": "مايكل", "image": "assets/images/user-3.jpg", "feedback": "نكهة موكا رائعة طازجة و عطرية شحن سريع"},
    {"name": "إميلي", "image": "assets/images/user-4.jpg", "feedback": "جودة ممتازة ! حبوب طازجة وتوصيل سريع أوصي به بشدة"},
    {"name": "انتوني", "image": "assets/images/user-5.jpg", "feedback": "أفضل قهوة منزوعة الكافين جربتها! ناعمة ولذيذة وصلت في الموعد المحدد"},
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: const EdgeInsets.all(20),
      itemCount: testimonials.length,
      itemBuilder: (context, index) {
        final testimonial = testimonials[index];
        return Container(
          margin: const EdgeInsets.symmetric(vertical: 10),
          padding: const EdgeInsets.all(20),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.1),
                blurRadius: 5,
                offset: const Offset(0, 3),
              ),
            ],
          ),
          child: Column(
            children: [
              CircleAvatar(
                radius: 50,
                backgroundImage: AssetImage(testimonial["image"]!),
              ),
              const SizedBox(height: 15),
              Text(
                testimonial["name"]!,
                style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
              const SizedBox(height: 10),
              Text(
                testimonial["feedback"]!,
                textAlign: TextAlign.center,
                style: const TextStyle(fontSize: 16),
              ),
            ],
          ),
        );
      },
    );
  }
}
