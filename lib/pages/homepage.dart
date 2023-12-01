import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:lg_ui_demo/extensions/blending_theme.dart';
import 'package:lg_ui_demo/extensions/spacing.dart';
import 'package:lg_ui_demo/pages/page_1.dart';
import 'package:lg_ui_demo/pages/page_2.dart';
import 'package:lg_ui_demo/pages/page_3.dart';
import 'package:lg_ui_demo/pages/page_4.dart';
import 'package:lg_ui_demo/shared_widgets/interface_row.dart';

import '../constants/constants.dart';
import '../constants/images.dart';
import '../constants/texts.dart';
import '../constants/themes.dart';
import '../providers/page_providers.dart';
import '../providers/settings_providers.dart';
import '../shared_widgets/app_bar.dart';
import '../shared_widgets/left_bar.dart';
import '../utils/helpers.dart';

class HomePage extends ConsumerStatefulWidget {
  const HomePage({super.key});

  @override
  ConsumerState createState() => _HomePageState();
}

class _HomePageState extends ConsumerState<HomePage> {
  @override
  Widget build(BuildContext context) {
    Themes themes = ref.watch(themesProvider);
    int page = ref.watch(pageProvider);
    return Scaffold(
      backgroundColor: themes.backgroundColor,
      body: Container(
        height: screenSize(context).height,
        width: screenSize(context).width,
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage(Images.background),
              fit: BoxFit.cover,
              opacity: 0.15),
        ),
        child: Padding(
          padding: const EdgeInsets.all(Constants.surroundPadding),
          child: Column(
            children: [
              const ThemedAppBar(),
              Constants.surroundPadding.ph,
              Expanded(
                child: Row(
                  children: [
                    const LeftBar(),
                    (Constants.surroundPadding * 1.2).pw,
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.only(
                            top: Constants.surroundPadding),
                        child: (() {
                          if (page == 2) {
                            return const Page2();
                          }
                          if (page == 3) {
                            return const Page3();
                          }
                          if (page == 4) {
                            return const Page4();
                          }
                          return const Page1();
                        }()),
                      ),
                    )
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
