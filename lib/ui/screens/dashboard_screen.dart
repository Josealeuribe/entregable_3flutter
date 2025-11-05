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
              // Tab mock (Categories / Recent transaction)
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 4),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(14),
                ),
                child: Row(
                  children: [
                    Container(
                      padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
                      decoration: BoxDecoration(
                        color: AppColors.lightBlue,
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: const Text('Categories', style: TextStyle(fontWeight: FontWeight.w600)),
                    ),
                    const SizedBox(width: 8),
                    const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 8),
                      child: Text('Recent transaction', style: TextStyle(color: Color(0xFF9CA3AF))),
                    )
                  ],
                ),
              ),
              const SizedBox(height: 14),
              // Header row
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text("Categories", style: TextStyle(fontWeight: FontWeight.w700, fontSize: 16)),
                  Text("View All", style: TextStyle(color: Color(0xFF2854FF))),
                ],
              ),
              const SizedBox(height: 12),
              // Categories list
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
