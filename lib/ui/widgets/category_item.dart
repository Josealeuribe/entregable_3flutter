import 'package:flutter/material.dart';
import '../../core/theme/app_colors.dart';
import '../../core/theme/app_text_styles.dart';
import '../../data/models/category_model.dart';

class CategoryItem extends StatelessWidget {
  final CategoryModel category;

  const CategoryItem({super.key, required this.category});

  // 🔹 Formateador simple de miles con puntos
  String formatWithDots(double value) {
    String number = value.toStringAsFixed(2);
    List parts = number.split('.');
    parts[0] = parts[0].replaceAllMapped(
      RegExp(r'(\d)(?=(\d{3})+(?!\d))'),
      (Match m) => '${m[1]}.',
    );
    return '${parts[0]},${parts[1]}';
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 10),
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(14),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.05),
            blurRadius: 5,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // 🔹 Icono de categoría
          Container(
            width: 42,
            height: 42,
            decoration: BoxDecoration(
              color: AppColors.lightBlue.withOpacity(0.1),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Image.asset(
              category.iconPath,
              fit: BoxFit.contain,
            ),
          ),
          const SizedBox(width: 12),

          // 🔹 Textos: nombre, subtítulo y precio (uno debajo del otro)
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  category.name,
                  style: AppTextStyles.body.copyWith(
                    fontWeight: FontWeight.w600,
                    color: Colors.black87,
                    fontSize: 14,
                  ),
                ),
                const SizedBox(height: 3),
                Text(
                  category.subtitle,
                  style: AppTextStyles.smallMuted.copyWith(
                    fontSize: 11,
                    color: Colors.grey[500],
                  ),
                ),
                const SizedBox(height: 4),
                // 🔹 Precio con formato y texto más grande
                Text(
                  "\$ ${formatWithDots(category.amount)}",
                  style: AppTextStyles.body.copyWith(
                    fontWeight: FontWeight.bold,
                    color: AppColors.primaryBlue,
                    fontSize: 15,
                  ),
                ),
              ],
            ),
          ),

          // 🔹 Porcentaje dentro de óvalo + flecha
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
            decoration: BoxDecoration(
              color: category.isPositive
                  ? Colors.green.withOpacity(0.1)
                  : Colors.red.withOpacity(0.1),
              borderRadius: BorderRadius.circular(20), // 🔸 Ovalado
              border: Border.all(
                color: category.isPositive ? Colors.green : Colors.red,
                width: 1.3,
              ),
            ),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(
                  category.isPositive
                      ? Icons.arrow_upward
                      : Icons.arrow_downward,
                  size: 14,
                  color: category.isPositive ? Colors.green : Colors.red,
                ),
                const SizedBox(width: 4),
                Text(
                  "${category.percentageChange.toStringAsFixed(1)}%",
                  style: TextStyle(
                    color: category.isPositive ? Colors.green : Colors.red,
                    fontWeight: FontWeight.w600,
                    fontSize: 12,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
