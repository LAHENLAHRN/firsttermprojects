import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  // رقم الهاتف
  final String phoneNumber = "+967772622455";

  // فتح تطبيق الاتصال
  Future<void> _callPhone() async {
    final Uri phoneUri = Uri(scheme: 'tel', path: phoneNumber);
    if (!await launchUrl(phoneUri)) {
      debugPrint('لا يمكن فتح الاتصال');
    }
  }

  // فتح واتساب مع رسالة تلقائية
  Future<void> _openWhatsApp() async {
    // الرسالة المطلوبة
    final String message = "مرحباً، أود طلب قهوة 😍☕";

    // ترميز الرسالة
    final String encodedMessage = Uri.encodeComponent(message);

    // رابط واتساب مع الرسالة
    final Uri whatsappUri = Uri.parse("https://wa.me/967772622455?text=$encodedMessage");

    if (!await launchUrl(
      whatsappUri,
      mode: LaunchMode.externalApplication,
    )) {
      debugPrint('لا يمكن فتح واتساب');
    }
  }

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
                  const Text(
                    "أجعل يومك رائعاََ مع قهوتنا الخاصة",
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.w600,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(height: 20),
                  const Text(
                    "مرحباََ بكم في جنة القهوة حيث تحكي كل حبة قصة وكل فنجان يثير الفرح",
                    style: TextStyle(
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

                  // أزرار "اتصل الآن" و "واتساب" أسفل الصورة مباشرة
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(0xFFf3961c),
                        ),
                        onPressed: _callPhone, // الاتصال
                        child: const Text("اتصل الآن"),
                      ),
                      const SizedBox(width: 15),
                      OutlinedButton(
                        style: OutlinedButton.styleFrom(
                          side: const BorderSide(color: Colors.white),
                          foregroundColor: Colors.white,
                        ),
                        onPressed: _openWhatsApp, // واتساب مع رسالة
                        child: const Text("واتساب"),
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
