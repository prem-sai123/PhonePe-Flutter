import 'package:flutter/material.dart';
import 'package:flutter_app/utils/context_ext.dart';

class BorderedText extends StatelessWidget {
  const BorderedText({
    super.key,
    required this.text,
    this.leading,
    this.trailing,
  });

  final String text;
  final Widget? leading;
  final Widget? trailing;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 12.0, vertical: 6.0),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8.0),
          border: Border.all(color: Colors.grey.shade400, width: .6)),
      child: Row(
        children: [
          if (leading != null) ...[leading!, const SizedBox(width: 4.0)],
          Text(
            text,
            style: context.textTheme.labelSmall?.copyWith(fontFamily: 'Sans', fontSize: 10),
          ),
          if (trailing != null) ...[const SizedBox(width: 4.0), trailing!],
        ],
      ),
    );
  }
}
