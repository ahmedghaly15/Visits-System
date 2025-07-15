import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:visits_system/src/core/helpers/extensions.dart';

import '../../../../../core/locale/locale_keys.dart';
import '../../../../../core/widgets/custom_data_input.dart';
import '../../../data/models/fetch_visits_response.dart';

class VisitCardBody extends StatelessWidget {
  const VisitCardBody({super.key, required this.visit});

  final FetchVisitsResponseItem visit;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.center,
      spacing: 16.h,
      children: [
        CustomDataInput(
          enabled: false,
          initialValue: visit.visitDate ?? 'fdlfksdsl;',
          labelText: LocaleKeys.visitDate,
        ),
        Row(
          spacing: 8.w,
          children: [
            Expanded(
              child: CustomDataInput(
                enabled: false,
                initialValue: visit.visitStateFromPolice ?? '58555',
                labelText: LocaleKeys.visitStateFromPolice,
              ),
            ),
            Expanded(
              child: CustomDataInput(
                enabled: false,
                initialValue: visit.visitStateFromPolice ?? '58555',
                labelText: LocaleKeys.visitStateFromPolice,
              ),
            ),
          ],
        ),
        Row(
          spacing: 8.w,
          children: [
            Expanded(
              child: CustomDataInput(
                enabled: false,
                initialValue: visit.isCreatedByDept?.toString() ?? '58555',
                labelText: LocaleKeys.isCreatedByDept,
              ),
            ),
            Expanded(
              child: CustomDataInput(
                enabled: false,
                initialValue: visit.visitType ?? 'dsfdffdf',
                labelText: LocaleKeys.visitType,
              ),
            ),
          ],
        ),
        Container(
          margin: EdgeInsets.only(top: 24.h),
          child: Text(
            'Number of visitors: ${(visit.visitors?.length) ?? 25}',
            style: context.shadTextTheme.p,
          ),
        ),
      ],
    );
  }
}
