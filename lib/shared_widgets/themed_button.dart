import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:lg_ui_demo/constants/texts.dart';
import 'package:lg_ui_demo/extensions/blending_theme.dart';
import 'package:lg_ui_demo/extensions/spacing.dart';

import '../constants/constants.dart';
import '../constants/themes.dart';
import '../providers/settings_providers.dart';

class ThemedButton extends ConsumerStatefulWidget {
  const ThemedButton({
    super.key,
    this.height,
    this.width,
    this.color,
    this.enabled = true,
    required this.onPressed,
    required this.name,
    required this.icon,
  });

  final Function onPressed;
  final double? height;
  final double? width;
  final String name;
  final IconData icon;
  final Color? color;
  final bool enabled;

  @override
  ConsumerState createState() => _ThemedButtonState();
}

class _ThemedButtonState extends ConsumerState<ThemedButton> {
  bool isHovered = false;

  @override
  Widget build(BuildContext context) {
    Themes themes = ref.watch(themesProvider);
    return IgnorePointer(
      //Enabling or disabling the button
      ignoring: !widget.enabled,

      //Hover effect
      child: MouseRegion(
        onEnter: (_) => setState(() => isHovered = true),
        onExit: (_) => setState(() => isHovered = false),
        child: TextButton(
          style: TextButton.styleFrom(
            padding: EdgeInsets.zero,
            tapTargetSize: MaterialTapTargetSize.shrinkWrap,
            backgroundColor: Colors.transparent,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(Constants.roundness),
            ),
          ),

          //On pressed
          onPressed: () => widget.onPressed(),
          child: SizedBox(
            height: widget.height,
            width: widget.width,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                //Icon
                Icon(
                  widget.icon,
                  size: 50,
                  color: themes.primaryOppositeColor,
                ),
                25.pw,
                //Name
                Text(
                  widget.name,
                  style: textStyleNormal.copyWith(
                      fontSize: 30,
                      color: isHovered
                          ? themes.modeColor
                          : themes.primaryOppositeColor),
                )
              ],
            ),
          ).addBlendTheme(widget.color ??
              (isHovered ? themes.primaryOppositeColor : themes.primaryColor)),
        ),
      ),
    );
  }
}
