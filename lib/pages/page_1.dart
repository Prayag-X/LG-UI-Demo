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

class Page1 extends ConsumerStatefulWidget {
  const Page1({
    super.key,
  });

  @override
  ConsumerState<Page1> createState() => _Page1State();
}

class _Page1State extends ConsumerState<Page1> {
  @override
  Widget build(BuildContext context) {
    Themes themes = ref.watch(themesProvider);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          Texts.homePageHeading,
          style: textStyleBold.copyWith(
              fontSize: 120, color: themes.primaryOppositeColor),
        ),
        Row(
          children: [
            Expanded(
                child: Text(Texts.homePageContent,
                    textAlign: TextAlign.justify,
                    style: textStyleNormal.copyWith(
                        color: themes.secondaryOppositeColor, fontSize: 33))),
            Constants.surroundPadding.pw,
            const LogoShower(
              logo: Images.lgLogo,
              height: 400,
              width: 700,
            )
          ],
        ),
        const InterfaceRow()
      ],
    );
  }
}
