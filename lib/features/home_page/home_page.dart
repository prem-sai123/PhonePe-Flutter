import 'package:flutter/material.dart';
import 'package:flutter_app/features/home_page/home_page_view.dart';
import 'package:flutter_app/utils/context_ext.dart';
import 'package:flutter_app/utils/widget_ext.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Row(
          spacing: 10.0,
          children: [
            _AppbarLeadingWidget(),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text(
                      'Add Address',
                      style: context.textTheme.titleMedium?.copyWith(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    Icon(Icons.arrow_drop_down),
                  ],
                ),
                Text(
                  '2685 California Street, Mountain View CA 94040',
                  style: context.textTheme.labelSmall?.copyWith(
                    color: Colors.white,
                  ),
                ),
              ],
            ).expanded(),
          ],
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Badge.count(
              count: 1,
              backgroundColor: Colors.green.shade400,
              textColor: Colors.white,
              child: Icon(Icons.notifications_none_outlined),
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.help_outline),
          ),
        ],
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(12.0),
        child: HomePageView(),
      ),
    );
  }
}

class _AppbarLeadingWidget extends StatelessWidget {
  const _AppbarLeadingWidget();

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 32,
      width: 32,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12.0),
        color: Color(0xFFFFFFFF),
      ),
      child: Icon(
        Icons.person_3_outlined,
        color: Color(0xFF5C4188),
      ),
    );
  }
}
