import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        color: const Color(0xFFfaf4f5),
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            const Text(
              "نبذه عنا",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 20),
            const Text(
              "في مقى كوفي هاوس نفتخر بكوننا وجهة مفضلة لعشاق القهوة والباحثين عن المحادثات على حد سواء نحن مستلزمون بتقديم تجربة قهوة استثنائية في جو مريح وجذاب حيث يمكن للضيوف الاسترخاء والاستمتاع بوقتهم براحة",
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 20),

            // أيقونات التواصل
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                  onPressed: () {
                    // رابط واتساب
                  },
                  icon: const FaIcon(
                    FontAwesomeIcons.whatsapp,
                    color: Colors.green,
                  ),
                ),
                IconButton(
                  onPressed: () {
                    // رابط انستغرام
                  },
                  icon: const FaIcon(
                    FontAwesomeIcons.instagram,
                    color: Colors.purple,
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.facebook),
                ),
              ],
            ),

            const SizedBox(height: 20),

            // الصورة دائرية في الأسفل
            ClipRRect(
              borderRadius: BorderRadius.circular(125), // قيمة كبيرة لجعلها دائرية
              child: Image.asset(
                "assets/images/about-image.jpg",
                width: 250,
                height: 250,
                fit: BoxFit.cover,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
