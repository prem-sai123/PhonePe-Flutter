import 'package:flutter/material.dart';
import 'package:flutter_app/utils/context_ext.dart';

class GridviewSection extends StatelessWidget {
  const GridviewSection({
    super.key,
    required this.title,
    required this.children,
    this.enableViewAll = false,
    this.additionalWidget,
  });

  final String title;
  final List<Widget> children;
  final bool enableViewAll;
  final Widget? additionalWidget;
  @override
  Widget build(BuildContext context) {
    int columnCount = (children.length >= 4) ? 4 : children.length;

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
        mainAxisSize: MainAxisSize.min,
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
            child: GridView.builder(
              shrinkWrap: true,
              padding: EdgeInsets.all(0),
              physics: NeverScrollableScrollPhysics(),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 4,
                crossAxisSpacing: 10.0,
                mainAxisSpacing: 10.0,
              ),
              itemCount: children.length,
              itemBuilder: (context, index) => Align(
                alignment: Alignment.center,
                child: children[index],
              ),
            ),
          ),
          if(additionalWidget != null) additionalWidget!,
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
        borderRadius: BorderRadius.circular(4.0),
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
          Icon(Icons.arrow_forward,
              size: 14, color: context.colorScheme.primary)
        ],
      ),
    );
  }
}
