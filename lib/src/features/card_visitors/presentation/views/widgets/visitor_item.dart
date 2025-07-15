import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shadcn_ui/shadcn_ui.dart' show ShadCard;
import 'package:visits_system/src/core/helpers/extensions.dart';

import '../../../../../core/locale/locale_keys.dart';
import '../../../../../core/widgets/custom_data_input.dart';
import '../../../../home/data/models/fetch_visits_response.dart';

class VisitorItem extends StatelessWidget {
  const VisitorItem({super.key, required this.visitor});

  final Visitor visitor;

  @override
  Widget build(BuildContext context) {
    return ShadCard(
      radius: BorderRadius.circular(16.r),
      title: Text(visitor.name ?? 'A7a ya3am', style: context.shadTextTheme.h4),
      columnCrossAxisAlignment: CrossAxisAlignment.start,
      columnMainAxisSize: MainAxisSize.min,
      padding: EdgeInsets.symmetric(vertical: 16.h, horizontal: 24.w),
      child: Column(
        spacing: 16.h,
        children: [
          CustomDataInput(
            enabled: false,
            initialValue: visitor.phone,
            labelText: LocaleKeys.phone,
          ),
          CustomDataInput(
            enabled: false,
            initialValue: visitor.nid,
            labelText: LocaleKeys.nid,
          ),
        ],
      ),
    );
  }
}
