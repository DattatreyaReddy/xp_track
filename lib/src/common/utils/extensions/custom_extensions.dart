import 'dart:math';

import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';
import 'package:intl/intl.dart';

import '../../constants/app_constants.dart';
import '../../constants/db_keys.dart';
import '../../l10n/generated/app_localizations.dart' show AppLocalizations;
import '../../widgets/custom_circular_progress_indicator.dart';
import '../../widgets/error_display_copy.dart';
import '../misc/app_utils.dart';

part './custom_extensions/async_value_extensions.dart';
part './custom_extensions/bool_extensions.dart';
part './custom_extensions/context_extensions.dart';
part './custom_extensions/date_time_extensions.dart';
part './custom_extensions/double_extensions.dart';
part './custom_extensions/duration_extensions.dart';
part './custom_extensions/go_router_extensions.dart';
part './custom_extensions/int_extensions.dart';
part './custom_extensions/iterable_extensions.dart';
part './custom_extensions/map_extensions.dart';
part './custom_extensions/paging_controller_extensions.dart';
part './custom_extensions/string_extensions.dart';
part './custom_extensions/widget_ref_extensions.dart';
