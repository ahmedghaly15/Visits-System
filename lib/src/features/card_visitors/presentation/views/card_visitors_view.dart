import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:visits_system/src/core/helpers/extensions.dart';

import '../../../../core/locale/locale_keys.dart';
import '../../../../core/widgets/main_footer.dart';
import '../../../home/data/models/fetch_visits_response.dart';
import 'widgets/visitor_item.dart';

class CardVisitorsView extends StatelessWidget {
  const CardVisitorsView({super.key, required this.visitors});

  final List<Visitor> visitors;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 24.w),
          child: CustomScrollView(
            slivers: [
              SliverAppBar(
                title: Text(
                  context.translate(LocaleKeys.visitors),
                  style: context.shadTextTheme.h3,
                ),
              ),
              SliverList.separated(
                itemBuilder: (_, index) =>
                    VisitorItem(visitor: visitors[index]),
                separatorBuilder: (_, __) => SizedBox(height: 16.h),
                itemCount: visitors.length,
              ),
              SliverFillRemaining(
                hasScrollBody: false,
                child: Column(
                  children: [
                    const Spacer(),
                    Container(
                      margin: EdgeInsets.only(bottom: 16.h),
                      child: const MainFooter(),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
