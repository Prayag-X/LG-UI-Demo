import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../extensions/spacing.dart';
import '../pages/page_1.dart';
import '../pages/page_2.dart';
import '../pages/page_3.dart';
import '../pages/page_4.dart';
import '../constants/constants.dart';
import '../constants/images.dart';
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
    //Listening to the providers
    Themes themes = ref.watch(themesProvider);
    int page = ref.watch(pageProvider);

    return Scaffold(
      backgroundColor: themes.backgroundColor,
      body: Container(
        height: screenSize(context).height,
        width: screenSize(context).width,
        decoration: const BoxDecoration(
          //Background Image
          image: DecorationImage(
              image: AssetImage(Images.background),
              fit: BoxFit.cover,
              opacity: 0.15),
        ),
        child: Padding(
          //Padding around the screen
          padding: const EdgeInsets.all(Constants.surroundPadding),
          child: Column(
            children: [
              //The topmost bar
              const ThemedAppBar(),

              Constants.surroundPadding.ph,
              Expanded(
                child: Row(
                  children: [
                    //Left Bar
                    const LeftBar(),
                    (Constants.surroundPadding * 1.2).pw,

                    //Content of the page
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.only(
                            top: Constants.surroundPadding),
                        child: (() {
                          //Decides which page to show based upon the provider value
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
