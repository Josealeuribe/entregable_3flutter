import 'package:flutter/material.dart';
import '../../core/theme/app_colors.dart';
import '../../core/theme/app_text_styles.dart';
import 'income_spending_card.dart';

class BudgetCard extends StatelessWidget {
  const BudgetCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // 🔹 Contenedor principal azul
        Container(
          padding: const EdgeInsets.all(20),
          decoration: BoxDecoration(
            color: AppColors.primaryBlue,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Text("Your budget", style: AppTextStyles.budgetTitle),
              SizedBox(height: 6),
              Text("\$ 2.868.000,00", style: AppTextStyles.budgetAmount),
              SizedBox(height: 16),

              // 🔹 Widgets internos (sin borde en iconos)
              IncomeSpendingCard(
                icon: Icons.arrow_upward,
                label: "Incomes",
                amount: "700.000,00",
                color: AppColors.positive,
                isIncome: true,
              ),
              SizedBox(height: 10),
              IncomeSpendingCard(
                icon: Icons.arrow_downward,
                label: "Spending",
                amount: "90.000,00",
                color: AppColors.negative,
                isIncome: false,
              ),
            ],
          ),
        ),

        // 🔹 Tabs pegados y ocupando todo el ancho
        Container(
          width: double.infinity,
          margin: const EdgeInsets.only(top: 0),
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
          decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(20),
              bottomRight: Radius.circular(20),
            ),
          ),
          child: Row(
            children: [
              Expanded(
                child: Container(
                  height: 40,
                  padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 6), // 🔹 padding interno agregado
                  decoration: BoxDecoration(
                    color: Color(0xFFE5E7EB), // 🔹 Gris claro
                    borderRadius: BorderRadius.circular(10),
                  ),
                  alignment: Alignment.center,
                  child: const Text(
                    "Categories",
                    style: TextStyle(
                      color: Colors.black87,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),
              const SizedBox(width: 8),
              Expanded(
                child: Container(
                  height: 40,
                  padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 6), // 🔹 padding interno agregado
                  decoration: BoxDecoration(
                    color: Colors.white, // 🔹 Fondo blanco
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: Color(0xFFE5E7EB), width: 1),
                  ),
                  alignment: Alignment.center,
                  child: const Text(
                    "Recent transaction",
                    style: TextStyle(
                      color: AppColors.primaryBlue, // 🔹 Texto azul
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
