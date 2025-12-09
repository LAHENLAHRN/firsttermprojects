import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ContactPage extends StatefulWidget {
  const ContactPage({super.key});

  @override
  State<ContactPage> createState() => _ContactPageState();
}

class _ContactPageState extends State<ContactPage> {
  // Controllers للحفاظ على قيم الحقول
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _messageController = TextEditingController();

  // حفظ البيانات في SharedPreferences ومسح الحقول
  Future<void> _saveData() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString('name', _nameController.text);
    await prefs.setString('email', _emailController.text);
    await prefs.setString('message', _messageController.text);

    // مسح الحقول بعد الحفظ
    _nameController.clear();
    _emailController.clear();
    _messageController.clear();

    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(content: Text('تم حفظ البيانات بنجاح')),
    );
  }

  // جلب البيانات من SharedPreferences
  Future<void> _loadData() async {
    final prefs = await SharedPreferences.getInstance();
    setState(() {
      _nameController.text = prefs.getString('name') ?? '';
      _emailController.text = prefs.getString('email') ?? '';
      _messageController.text = prefs.getString('message') ?? '';
    });

    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(content: Text('تم جلب البيانات')),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFFF5E1), // خلفية سكري
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            // حقول تعبئة البيانات
            TextField(
              controller: _nameController,
              decoration: const InputDecoration(
                labelText: "اسمك",
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 10),
            TextField(
              controller: _emailController,
              decoration: const InputDecoration(
                labelText: "البريد الالكتروني",
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 10),
            TextField(
              controller: _messageController,
              maxLines: 4,
              decoration: const InputDecoration(
                labelText: "رسالتك",
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 10),

            // أزرار الإرسال والجلب بنفس اللون
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // زر جلب البيانات أولاً
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFFf3961c)),
                  onPressed: _loadData,
                  child: const Text("جلب البيانات"),
                ),
                const SizedBox(width: 15),
                // زر الإرسال بعده
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFFf3961c)),
                  onPressed: _saveData,
                  child: const Text("إرسال"),
                ),
              ],
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
