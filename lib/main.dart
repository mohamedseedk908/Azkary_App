
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:intl/date_symbol_data_local.dart';

import 'azkary.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initializeDateFormatting('ar', null); // تهيئة اللغة العربية
  Intl.defaultLocale = 'ar'; // تعيين اللغة الافتراضية

  runApp(Azkary());
}

