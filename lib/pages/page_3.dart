import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:lg_ui_demo/extensions/blending_theme.dart';
import 'package:lg_ui_demo/extensions/spacing.dart';
import 'package:lg_ui_demo/providers/page_providers.dart';
import 'package:lg_ui_demo/shared_widgets/themed_button.dart';
import 'package:lg_ui_demo/utils/logo_shower.dart';

import '../constants/constants.dart';
import '../constants/images.dart';
import '../constants/texts.dart';
import '../constants/themes.dart';
import '../providers/settings_providers.dart';
import '../shared_widgets/interface_row.dart';

class Page3 extends ConsumerStatefulWidget {
  const Page3({
    super.key,
  });

  @override
  ConsumerState<Page3> createState() => _Page3State();
}

class _Page3State extends ConsumerState<Page3> {
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
            'Page 3',
            style: textStyleBold.copyWith(
                fontSize: 120, color: themes.primaryOppositeColor),
          ),
        ),
        const InterfaceRow()
      ],
    );
  }
}
