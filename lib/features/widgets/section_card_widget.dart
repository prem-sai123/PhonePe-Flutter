import 'package:flutter/material.dart';
import 'package:flutter_app/utils/context_ext.dart';

class SectionCardWidget extends StatelessWidget {
  const SectionCardWidget({
    super.key,
    required this.title,
    required this.child,
    this.enableViewAll = false,
  });

  final String title;
  final Widget child;
  final bool enableViewAll;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12.0),
        border: Border.all(color: Colors.white),
      ),
      margin: EdgeInsets.zero,
      padding: EdgeInsets.symmetric(horizontal: 12.0, vertical: 8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        spacing: 12.0,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                title,
                style: context.textTheme.labelLarge?.copyWith(
                  fontFamily: 'Sans',
                  fontSize: 16,
                ),
              ),
              if (enableViewAll) ...[_ViewAllBtn()],
            ],
          ),
          DefaultTextStyle(
            style: context.textTheme.labelSmall!.copyWith(
              height: 1.3,
              fontFamily: 'Sans',
              fontWeight: FontWeight.w400,
              fontSize: 12,
            ),
            child: child,
          ),
        ],
      ),
    );
  }
}

class _ViewAllBtn extends StatelessWidget {
  const _ViewAllBtn();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(4.0),
      decoration: BoxDecoration(
      color: Color(0XFFF1E9F7),
        borderRadius: BorderRadius.circular(4.0)
      ),
      child: Row(
        children: [
          Text(
            'View All',
            style: context.textTheme.labelMedium?.copyWith(
              fontWeight: FontWeight.bold,
              fontFamily: 'Sans',
              color: context.colorScheme.primary,
            ),
          ),
          const SizedBox(width: 4.0),
          Icon(Icons.arrow_forward, size: 14, color: context.colorScheme.primary)
        ],
      ),
    );
  }
}
