// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'app_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$AppState implements DiagnosticableTreeMixin {
  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    properties..add(DiagnosticsProperty('type', 'AppState'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is AppState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AppState()';
  }
}

/// @nodoc
class $AppStateCopyWith<$Res> {
  $AppStateCopyWith(AppState _, $Res Function(AppState) __);
}

/// @nodoc

class _Initial with DiagnosticableTreeMixin implements AppState {
  const _Initial();

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    properties..add(DiagnosticsProperty('type', 'AppState.initial'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AppState.initial()';
  }
}

/// @nodoc

class ThemeChangeModeState with DiagnosticableTreeMixin implements AppState {
  const ThemeChangeModeState({required this.isDarkMode});

  final bool isDarkMode;

  /// Create a copy of AppState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ThemeChangeModeStateCopyWith<ThemeChangeModeState> get copyWith =>
      _$ThemeChangeModeStateCopyWithImpl<ThemeChangeModeState>(
          this, _$identity);

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    properties
      ..add(DiagnosticsProperty('type', 'AppState.themechangemode'))
      ..add(DiagnosticsProperty('isDarkMode', isDarkMode));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ThemeChangeModeState &&
            (identical(other.isDarkMode, isDarkMode) ||
                other.isDarkMode == isDarkMode));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isDarkMode);

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AppState.themechangemode(isDarkMode: $isDarkMode)';
  }
}

/// @nodoc
abstract mixin class $ThemeChangeModeStateCopyWith<$Res>
    implements $AppStateCopyWith<$Res> {
  factory $ThemeChangeModeStateCopyWith(ThemeChangeModeState value,
          $Res Function(ThemeChangeModeState) _then) =
      _$ThemeChangeModeStateCopyWithImpl;
  @useResult
  $Res call({bool isDarkMode});
}

/// @nodoc
class _$ThemeChangeModeStateCopyWithImpl<$Res>
    implements $ThemeChangeModeStateCopyWith<$Res> {
  _$ThemeChangeModeStateCopyWithImpl(this._self, this._then);

  final ThemeChangeModeState _self;
  final $Res Function(ThemeChangeModeState) _then;

  /// Create a copy of AppState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? isDarkMode = null,
  }) {
    return _then(ThemeChangeModeState(
      isDarkMode: null == isDarkMode
          ? _self.isDarkMode
          : isDarkMode // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class LanguageChangeState with DiagnosticableTreeMixin implements AppState {
  const LanguageChangeState({required this.locale});

  final Locale locale;

  /// Create a copy of AppState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $LanguageChangeStateCopyWith<LanguageChangeState> get copyWith =>
      _$LanguageChangeStateCopyWithImpl<LanguageChangeState>(this, _$identity);

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    properties
      ..add(DiagnosticsProperty('type', 'AppState.languagechange'))
      ..add(DiagnosticsProperty('locale', locale));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is LanguageChangeState &&
            (identical(other.locale, locale) || other.locale == locale));
  }

  @override
  int get hashCode => Object.hash(runtimeType, locale);

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AppState.languagechange(locale: $locale)';
  }
}

/// @nodoc
abstract mixin class $LanguageChangeStateCopyWith<$Res>
    implements $AppStateCopyWith<$Res> {
  factory $LanguageChangeStateCopyWith(
          LanguageChangeState value, $Res Function(LanguageChangeState) _then) =
      _$LanguageChangeStateCopyWithImpl;
  @useResult
  $Res call({Locale locale});
}

/// @nodoc
class _$LanguageChangeStateCopyWithImpl<$Res>
    implements $LanguageChangeStateCopyWith<$Res> {
  _$LanguageChangeStateCopyWithImpl(this._self, this._then);

  final LanguageChangeState _self;
  final $Res Function(LanguageChangeState) _then;

  /// Create a copy of AppState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? locale = null,
  }) {
    return _then(LanguageChangeState(
      locale: null == locale
          ? _self.locale
          : locale // ignore: cast_nullable_to_non_nullable
              as Locale,
    ));
  }
}

// dart format on
