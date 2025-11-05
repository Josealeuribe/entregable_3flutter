import 'package:flutter/material.dart';
import '../../data/models/category_model.dart';
import '../../utils/formatters.dart';
import '../../core/theme/app_colors.dart';
import '../../core/theme/app_text_styles.dart';

class CategoryItem extends StatelessWidget {
  final CategoryModel category;
  const CategoryItem({super.key, required this.category});

  @override
  Widget build(BuildContext context) {
    final perc = category.percentageChange;
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10),
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(14),
        boxShadow: [
          BoxShadow(
            color: Colors.black12.withOpacity(0.04),
            blurRadius: 8,
            offset: const Offset(0, 4),
          )
        ],
      ),
      child: Row(
        children: [
          // icon circle
          Container(
            width: 56,
            height: 56,
            decoration: BoxDecoration(
              color: AppColors.softGray,
              borderRadius: BorderRadius.circular(12),
            ),
            padding: const EdgeInsets.all(8),
            child: Image.asset(category.iconPath),
          ),
          const SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(category.name, style: AppTextStyles.sectionTitle),
                const SizedBox(height: 4),
                Text(category.subtitle, style: AppTextStyles.smallMuted),
                const SizedBox(height: 6),
                Text(formatCurrency(category.amount), style: AppTextStyles.categoryAmount),
              ],
            ),
          ),
          // percentage badge
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Container(
                padding: const EdgeInsets.symmetric(vertical: 6, horizontal: 10),
                decoration: BoxDecoration(
                  color: category.isPositive ? AppColors.positive.withOpacity(0.12) : AppColors.negative.withOpacity(0.12),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Row(
                  children: [
                    Icon(
                      category.isPositive ? Icons.arrow_upward : Icons.arrow_downward,
                      color: category.isPositive ? AppColors.positive : AppColors.negative,
                      size: 14,
                    ),
                    const SizedBox(width: 6),
                    Text(
                      '${perc.toStringAsFixed(1)} %',
                      style: TextStyle(
                        color: category.isPositive ? AppColors.positive : AppColors.negative,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
