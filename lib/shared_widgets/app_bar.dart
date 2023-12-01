import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../extensions/blending_theme.dart';
import '../extensions/spacing.dart';
import '../shared_widgets/themed_button.dart';
import '../constants/constants.dart';
import '../constants/texts.dart';
import '../constants/themes.dart';
import '../providers/settings_providers.dart';

class ThemedAppBar extends ConsumerStatefulWidget {
  const ThemedAppBar({
    super.key,
  });

  @override
  ConsumerState<ThemedAppBar> createState() => _ThemedAppBarState();
}

class _ThemedAppBarState extends ConsumerState<ThemedAppBar> {
  @override
  Widget build(BuildContext context) {
    Themes themes = ref.watch(themesProvider);

    //Dividing the sections according the the ratio
    return Row(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Expanded(
            flex: 5,
            child: SizedBox(
              height: Constants.barSize,
              child: Center(
                  child: Text(
                Texts.appBarTitle,
                style: textStyleBold.copyWith(
                    fontSize: 30, color: themes.primaryOppositeColor),
              )),
            ).addBlendTheme(themes.secondaryColor)),
        Constants.surroundPadding.pw,
        Expanded(
            flex: 2,
            child: ThemedButton(
              height: Constants.barSize,
              name: Texts.appBarProfile,
              icon: Icons.person_outline_rounded,
              onPressed: () => print('Pressed!'),
            )),
        Constants.surroundPadding.pw,
        Expanded(
            flex: 2,
            child: ThemedButton(
              height: Constants.barSize,
              name: Texts.appBarSettings,
              icon: Icons.settings,
              onPressed: () => print('Pressed!'),
            )),
        Constants.surroundPadding.pw,
        Expanded(
            flex: 2,
            child: ThemedButton(
                height: Constants.barSize,
                name: Texts.appBarConnection,
                icon: Icons.power_settings_new_rounded,
                color: themes.redColor,
                onPressed: () => print('Pressed!'),
                enabled: false)),
      ],
    );
  }
}
