import 'package:flutter/material.dart';
import 'home_page.dart';
import 'about_page.dart';
import 'menu_page.dart';
import 'testimonials_page.dart';
import 'gallery_page.dart';
import 'contact_page.dart';

void main() {
  runApp(const CoffeeApp());
}

class CoffeeApp extends StatefulWidget {
  const CoffeeApp({super.key});

  @override
  State<CoffeeApp> createState() => _CoffeeAppState();
}

class _CoffeeAppState extends State<CoffeeApp> {
  int _selectedIndex = 0;

  final List<Widget> _pages = const [
    HomePage(),
    GalleryPage(),
    MenuPage(),
    TestimonialsPage(),
    AboutPage(),
    ContactPage(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        // AppBar ثابت لجميع الصفحات
        appBar: AppBar(
          backgroundColor: const Color(0xFF3b141c),
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Icon(Icons.coffee, color: Color(0xFFf3961c)),
              SizedBox(width: 10),
              Text(
                "Coffee",
                style: TextStyle(
                    color: Color(0xFFf3961c),
                    fontWeight: FontWeight.bold,
                    fontSize: 22),
              ),
            ],
          ),
          centerTitle: true,
        ),
        body: _pages[_selectedIndex],
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _selectedIndex,
          selectedItemColor: const Color(0xFFf3961c), // لون الزر المحدد
          unselectedItemColor: Colors.white,           // لون الأزرار الغير محددة
          backgroundColor: const Color(0xFF3b141c),    // لون الخلفية لشريط التنقل
          type: BottomNavigationBarType.fixed,
          onTap: _onItemTapped,
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'الرئيسية'),
            BottomNavigationBarItem(icon: Icon(Icons.photo), label: 'المعرض'),
            BottomNavigationBarItem(icon: Icon(Icons.menu_book), label: 'القائمة'),
            BottomNavigationBarItem(icon: Icon(Icons.reviews), label: 'الشهادات'),
            BottomNavigationBarItem(icon: Icon(Icons.info), label: 'حول'),
            BottomNavigationBarItem(icon: Icon(Icons.contact_mail), label: 'اتصل بنا'),
          ],
        ),


      ),
    );
  }
}
