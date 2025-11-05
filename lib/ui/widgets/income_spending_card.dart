import 'package:flutter/material.dart';
import '../../core/theme/app_colors.dart';
import '../../core/theme/app_text_styles.dart';

class IncomeSpendingCard extends StatelessWidget {
  final IconData icon;
  final String label;
  final String amount;
  final Color color;
  final bool isIncome;

  const IncomeSpendingCard({
    super.key,
    required this.icon,
    required this.label,
    required this.amount,
    required this.color,
    required this.isIncome,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(14),
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.15), // Fondo más claro dentro del azul
        borderRadius: BorderRadius.circular(14),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Primera fila: icono, label, monto y flecha
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  // Icono cuadrado con borde
                  Container(
                    width: 36,
                    height: 36,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(8),
                      border: Border.all(color: color, width: 2),
                    ),
                    child: Icon(
                      icon,
                      color: color,
                      size: 20,
                    ),
                  ),
                  const SizedBox(width: 10),
                  Text(
                    label,
                    style: AppTextStyles.body.copyWith(
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Text(
                    "\$ $amount",
                    style: AppTextStyles.body.copyWith(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(width: 8),
                  Container(
                    padding: const EdgeInsets.all(3),
                    decoration: BoxDecoration(
                      color: Colors.transparent,
                      borderRadius: BorderRadius.circular(6),
                      border: Border.all(color: Colors.white, width: 1.3),
                    ),
                    child: const Icon(
                      Icons.arrow_forward_ios,
                      color: Colors.white,
                      size: 12,
                    ),
                  ),
                ],
              ),
            ],
          ),

          const SizedBox(height: 6),

          // Segunda fila: texto pequeño debajo del monto
          Padding(
            padding: const EdgeInsets.only(left: 46),
            child: Text(
              "From January 1 to January 31",
              style: AppTextStyles.smallMuted.copyWith(
                color: Colors.white70,
                fontSize: 12,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
