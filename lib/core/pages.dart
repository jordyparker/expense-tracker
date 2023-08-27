import 'package:expense_tracker/pages/home.dart';
import 'package:get/get.dart';

final List<GetPage> pages = [
  GetPage(
    name: '/home',
    page: () => const HomePage()
  ),
];