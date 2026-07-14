import 'package:flutter/material.dart';

class AppColors {
  // اللون الرئيسي للتطبيق (الأخضر الغامق الأنيق لـ HomeHaven)
  static const Color primary = Color(0xFF2D4B3E); 
  
  // اللون الثانوي (الذهبي أو البيج الدافئ للتفاصيل والأزرار الثانوية)
  static const Color accent = Color(0xFFD4A373);  
  
  // ألوان الخلفيات
  static const Color backgroundLight = Color(0xFFF9F9F9); // الخلفية البيضاء المريحة للعين
  static const Color cardBackground = Color(0xFFFFFFFF);  // خلفية الكروت والـ Containers

  // ألوان النصوص والرموز
  static const Color textPrimary = Color(0xFF1A1A1A);   // للنصوص الأساسية والعناوين
  static const Color textSecondary = Color(0xFF707070); // للنصوص الفرعية والرموز الرمادية

  // ألوان إضافية للنجاح أو الخطأ (لو هتحتاجها في الـ Validation)
  static const Color error = Color(0xFFD32F2F);
  static const Color success = Color(0xFF388E3C);
}