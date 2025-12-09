import 'package:flutter/material.dart';

class ContactPage extends StatelessWidget {
  const ContactPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFFF5E1), // خلفية سكري
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            // حقول تعبئة البيانات أولاً
            TextField(
              decoration: InputDecoration(
                labelText: "اسمك",
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 10),
            TextField(
              decoration: InputDecoration(
                labelText: "البريد الالكتروني",
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 10),
            TextField(
              maxLines: 4,
              decoration: InputDecoration(
                labelText: "رسالتك",
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFFf3961c)),
              onPressed: () {},
              child: const Text("إرسال"),
            ),

            const SizedBox(height: 30),

            // المعلومات الثابتة أسفل الحقول
            const Text(
              "اتصل بنا",
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),
            Column(
              children: const [
                ListTile(
                  leading: Icon(Icons.location_on),
                  title: Text("Yemen - Hadramout - Tarim - Damon"),
                ),
                ListTile(
                  leading: Icon(Icons.email),
                  title: Text("info@Coffeeshwobite.com"),
                ),
                ListTile(
                  leading: Icon(Icons.phone),
                  title: Text("967+ 772-622-455"),
                ),
                ListTile(
                  leading: Icon(Icons.access_time),
                  title: Text("Monday - Friday: 9:00 AM - 5:00 PM"),
                ),
                ListTile(
                  leading: Icon(Icons.access_time),
                  title: Text("Saturday: 10:00 AM - 3:00 PM"),
                ),
                ListTile(
                  leading: Icon(Icons.access_time),
                  title: Text("Sunday: Closed"),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
