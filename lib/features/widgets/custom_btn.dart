import 'package:flutter/material.dart';
import 'package:flutter_app/utils/context_ext.dart';

class CustomBtn extends StatelessWidget {
  const CustomBtn({
    super.key,
    required this.title,
    this.subtitle,
    this.icon,
  });

  final String title;
  final String? subtitle;
  final Widget? icon;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12.0),
        color: Colors.white,
      ),
      padding: EdgeInsets.all(8.0),
      child: Row(
        spacing: 8.0,
        children: [
          if(icon != null) icon!,
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: context.textTheme.labelMedium,
              ),
              if (subtitle != null)
                Text(
                  subtitle!,
                  style: context.textTheme.labelMedium?.copyWith(
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Sans'
                  ),
                )
            ],
          ),
        ],
      ),
    );
  }
}
