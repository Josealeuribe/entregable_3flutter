import 'package:flutter/material.dart';
import '../../core/theme/app_colors.dart';
import '../../ui/widgets/top_bar.dart';
import '../../ui/widgets/budget_card.dart';
import '../../data/dummy_data/categories_data.dart';
import '../widgets/category_item.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.fromLTRB(16, 18, 16, 24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const TopBar(),
              const SizedBox(height: 18),
              const BudgetCard(),
              const SizedBox(height: 18),

              // 🔹 "View All" alineado a la derecha
              Align(
                alignment: Alignment.centerRight,
                child: const Text(
                  "View All",
                  style: TextStyle(
                    color: Color(0xFF2854FF),
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),

              const SizedBox(height: 12),

              // 🔹 Lista de categorías
              Column(
                children: categories.map((c) => CategoryItem(category: c)).toList(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
