import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:lg_ui_demo/extensions/blending_theme.dart';

import '../constants/constants.dart';
import '../constants/images.dart';
import '../constants/themes.dart';
import '../providers/page_providers.dart';
import '../providers/settings_providers.dart';
import '../utils/helpers.dart';

class LeftBar extends ConsumerStatefulWidget {
  const LeftBar({
    super.key,
  });

  @override
  ConsumerState<LeftBar> createState() => _LeftBarState();
}

class _LeftBarState extends ConsumerState<LeftBar> {
  @override
  Widget build(BuildContext context) {
    Themes themes = ref.watch(themesProvider);
    int page = ref.watch(pageProvider);
    double barMaxHeight = screenSize(context).height -
        Constants.barSize -
        Constants.surroundPadding * 3;
    return SizedBox(
      height: barMaxHeight,
      width: Constants.barSize * 1.1,
      child: Stack(
        children: [
          //Base bar with the primary color
          SizedBox(
            height: barMaxHeight,
            width: Constants.barSize * 1.1,
          ).addBlendTheme(themes.primaryColor),

          //Highlighting bar changing according to the page number
          AnimatedContainer(
            duration: const Duration(milliseconds: 500),
            curve: Curves.easeOut,
            height: barMaxHeight / (Constants.totalPages) * page,
            width: Constants.barSize * 1.1,
          ).addBlendTheme(themes.secondaryColor),

          //The icons
          SizedBox(
            height: barMaxHeight,
            width: Constants.barSize * 1.1,
            child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Icon(
                    Icons.water_drop_outlined,
                    color: themes.primaryOppositeColor,
                    size: 60,
                  ),
                  Icon(
                    Icons.local_fire_department_outlined,
                    color: themes.primaryOppositeColor,
                    size: 60,
                  ),
                  Icon(
                    Icons.ac_unit_outlined,
                    color: themes.primaryOppositeColor,
                    size: 60,
                  ),
                  Icon(
                    Icons.eco_outlined,
                    color: themes.primaryOppositeColor,
                    size: 60,
                  ),
                ]),
          ),
        ],
      ),
    );
  }
}
