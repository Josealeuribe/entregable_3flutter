import 'package:flutter/material.dart';
import '../../core/constants/app_assets.dart';

class TopBar extends StatelessWidget {
  const TopBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        // Foto circular + Store Name
        CircleAvatar(
          radius: 20,
          backgroundImage: AssetImage(AppAssets.profile),
        ),
        const SizedBox(width: 10),
        const Expanded(
          child: Text(
            'Store Name',
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
          ),
        ),
        // Notificación
        Container(
          margin: const EdgeInsets.only(right: 8),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.05),
                blurRadius: 6,
                offset: const Offset(0, 3),
              )
            ],
          ),
          child: IconButton(
            onPressed: () {},
            icon: const Icon(Icons.notifications_none),
            color: Colors.black54,
          ),
        ),
        Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
          ),
          child: IconButton(
            onPressed: () {},
            icon: const Icon(Icons.more_vert),
            color: Colors.black54,
          ),
        ),
      ],
    );
  }
}
