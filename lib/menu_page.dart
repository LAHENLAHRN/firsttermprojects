import 'package:flutter/material.dart';

class MenuPage extends StatelessWidget {
  const MenuPage({super.key});

  final List<Map<String, String>> menuItems = const [
    {"name": "المشروبات الساخن", "image": "assets/images/hot-beverages.png", "desc": "مجموعة واسعة من القهوة الساخنة لتجعلك منتعشاََ و خفيفاََ"},
    {"name": "المشروبات الباردة", "image": "assets/images/cold-beverages.png", "desc": "قهوة باردة كريمية ورغوة لتجعلك منتعشاََ"},
    {"name": "مرطبات", "image": "assets/images/refreshment.png", "desc": "فاكهة وثلج مشروب منعش ليجعلك تشعر بالانتعاش"},
    {"name": "مجموعات خاصة", "image": "assets/images/special-combo.png", "desc": "تحويل الاكل والشرب المفضل لديك"},
    {"name": "الحلويات", "image": "assets/images/desserts.png", "desc": "اشباع ذوقك واخذك في رحلة ممتعة"},
    {"name": "برجر فرنسي", "image": "assets/images/burger-frenchfries.png", "desc": "وجبات هادئة خفيفة لاشباع جوع الصغير"},
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xFF2B2B2B), // خلفية رمادي داكن
      child: GridView.builder(
        padding: const EdgeInsets.all(20),
        itemCount: menuItems.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 15,
          crossAxisSpacing: 15,
          childAspectRatio: 0.8,
        ),
        itemBuilder: (context, index) {
          return Container(
            decoration: BoxDecoration(
              color: Colors.white.withOpacity(0.1), // المربعات شفافة
              borderRadius: BorderRadius.circular(15),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(menuItems[index]["image"]!, height: 100),
                const SizedBox(height: 10),
                Text(
                  menuItems[index]["name"]!,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                    color: Colors.white, // نص أبيض ليظهر على الخلفية الداكنة
                  ),
                ),
                const SizedBox(height: 5),
                Text(
                  menuItems[index]["desc"]!,
                  textAlign: TextAlign.center,
                  style: const TextStyle(color: Colors.white70), // نص ثانوي أبيض فاتح
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
