import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF3b141c), // خلفية موحدة للصفحة
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Hero Section
            Container(
              padding: const EdgeInsets.symmetric(vertical: 50, horizontal: 20),
              child: Column(
                children: [
                  // عنوان رئيسي أعلى الصفحة
                  Text(
                    "أفضل قهوة",
                    style: TextStyle(
                      fontSize: 28,
                      color: const Color(0xFFf3961c),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    "أجعل يومك رائعاََ مع قهوتنا الخاصة",
                    style: const TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.w600,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(height: 20),
                  Text(
                    "مرحباََ بكم في جنة القهوة حيث تحكي كل حبة قصة وكل فنجان يثير الفرح",
                    style: const TextStyle(
                      fontSize: 16,
                      color: Colors.white,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 20),

                  // الصورة الرئيسية
                  Image.asset(
                    "assets/images/coffee-hero-section.png",
                    height: 250,
                  ),
                  const SizedBox(height: 20),

                  // أزرار "اطلب الآن" و "اتصل بنا" أسفل الصورة مباشرة
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(0xFFf3961c),
                        ),
                        onPressed: () {
                          // رابط طلب الآن
                        },
                        child: const Text("اطلب الآن"),
                      ),
                      const SizedBox(width: 15),
                      OutlinedButton(
                        style: OutlinedButton.styleFrom(
                          side: const BorderSide(color: Colors.white),
                          foregroundColor: Colors.white,
                        ),
                        onPressed: () {
                          // رابط الاتصال
                        },
                        child: const Text("اتصل بنا"),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
