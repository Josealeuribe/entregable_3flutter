import '../models/category_model.dart';
import '../../core/constants/app_assets.dart';

final List<CategoryModel> categories = [
  CategoryModel(
    name: "Food & Drink",
    amount: 391254.01, 
    iconPath: AppAssets.pizza,
    percentageChange: 1.8,
    isPositive: true,
    subtitle: "+ \$2250 Today",
  ),
  CategoryModel(
    name: "Electronics",
    amount: 3176254.01,
    iconPath: AppAssets.tv,
    percentageChange: 43.6,
    isPositive: true,
    subtitle: "+ \$2250 Today",
  ),
  CategoryModel(
    name: "Health",
    amount: 38.01,
    iconPath: AppAssets.pills,
    percentageChange: 25.8,
    isPositive: false,
    subtitle: "+ \$110 Today",
  ),
];
