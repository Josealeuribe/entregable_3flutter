class CategoryModel {
  final String name;
  final double amount;
  final String iconPath;
  final double percentageChange;
  final bool isPositive;
  final String subtitle; // e.g., "+ $2250 Today"

  CategoryModel({
    required this.name,
    required this.amount,
    required this.iconPath,
    required this.percentageChange,
    required this.isPositive,
    required this.subtitle,
  });
}
