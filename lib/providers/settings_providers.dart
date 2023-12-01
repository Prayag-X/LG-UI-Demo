import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../constants/themes.dart';

StateProvider<Themes> themesProvider = StateProvider((ref) => ThemesDark());
