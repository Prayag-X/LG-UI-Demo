import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../extensions/spacing.dart';
import '../constants/texts.dart';
import '../constants/themes.dart';
import '../providers/settings_providers.dart';
import '../shared_widgets/interface_row.dart';

class Page2 extends ConsumerStatefulWidget {
  const Page2({
    super.key,
  });

  @override
  ConsumerState<Page2> createState() => _Page2State();
}

class _Page2State extends ConsumerState<Page2> {
  @override
  Widget build(BuildContext context) {
    Themes themes = ref.watch(themesProvider);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        0.ph,
        Center(
          child: Text(
            'Page 2',
            style: textStyleBold.copyWith(
                fontSize: 120, color: themes.primaryOppositeColor),
          ),
        ),
        const InterfaceRow()
      ],
    );
  }
}
