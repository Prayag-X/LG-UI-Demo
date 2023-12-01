import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../shared_widgets/themed_button.dart';
import '../constants/constants.dart';
import '../constants/texts.dart';
import '../constants/themes.dart';
import '../providers/page_providers.dart';
import '../providers/settings_providers.dart';

class InterfaceRow extends ConsumerStatefulWidget {
  const InterfaceRow({
    super.key,
  });

  @override
  ConsumerState<InterfaceRow> createState() => _InterfaceRowState();
}

class _InterfaceRowState extends ConsumerState<InterfaceRow> {
  @override
  Widget build(BuildContext context) {
    Themes themes = ref.watch(themesProvider);
    int page = ref.watch(pageProvider);
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      mainAxisSize: MainAxisSize.max,
      children: [
        //Don't show the button when its the first page
        page != 1
            ? ThemedButton(
                height: Constants.barSize,
                width: Constants.barSize * 2.5,
                name: Texts.buttonPrev,
                icon: Icons.arrow_back_rounded,
                color: themes.secondaryColor,
                onPressed: () => ref.read(pageProvider.notifier).state--,
              )
            : const SizedBox(
                height: Constants.barSize,
                width: Constants.barSize * 2.5,
              ),

        //Central dots to show the page number
        SizedBox(
            height: 25,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              shrinkWrap: true,
              itemCount: Constants.totalPages,
              itemBuilder: (BuildContext context, int index) => Padding(
                padding: const EdgeInsets.symmetric(horizontal: 1.0),
                child: Container(
                  height: 25,
                  width: 25,
                  decoration: BoxDecoration(
                    color:
                        page - 1 == index ? Colors.white : Colors.transparent,
                    border: Border.all(color: themes.secondaryColor, width: 1),
                    borderRadius: BorderRadius.circular(100),
                  ),
                ),
              ),
            )),

        //Don't show the button when its the last page
        page != Constants.totalPages
            ? ThemedButton(
                height: Constants.barSize,
                width: Constants.barSize * 2.5,
                name: Texts.buttonNext,
                icon: Icons.arrow_forward_rounded,
                color: themes.secondaryColor,
                onPressed: () => ref.read(pageProvider.notifier).state++,
              )
            : const SizedBox(
                height: Constants.barSize,
                width: Constants.barSize * 2.5,
              ),
      ],
    );
  }
}
