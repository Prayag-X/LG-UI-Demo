import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../constants/themes.dart';


//Provider for the theme management
StateProvider<Themes> themesProvider = StateProvider((ref) => ThemesDark());
