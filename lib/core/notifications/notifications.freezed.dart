// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'notifications.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AppNotification {
  String get title => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  NotificationSource? get source => throw _privateConstructorUsedError;

  /// Create a copy of AppNotification
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AppNotificationCopyWith<AppNotification> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppNotificationCopyWith<$Res> {
  factory $AppNotificationCopyWith(
          AppNotification value, $Res Function(AppNotification) then) =
      _$AppNotificationCopyWithImpl<$Res, AppNotification>;
  @useResult
  $Res call({String title, String description, NotificationSource? source});
}

/// @nodoc
class _$AppNotificationCopyWithImpl<$Res, $Val extends AppNotification>
    implements $AppNotificationCopyWith<$Res> {
  _$AppNotificationCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AppNotification
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? description = null,
    Object? source = freezed,
  }) {
    return _then(_value.copyWith(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      source: freezed == source
          ? _value.source
          : source // ignore: cast_nullable_to_non_nullable
              as NotificationSource?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AppNotificationImplCopyWith<$Res>
    implements $AppNotificationCopyWith<$Res> {
  factory _$$AppNotificationImplCopyWith(_$AppNotificationImpl value,
          $Res Function(_$AppNotificationImpl) then) =
      __$$AppNotificationImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String title, String description, NotificationSource? source});
}

/// @nodoc
class __$$AppNotificationImplCopyWithImpl<$Res>
    extends _$AppNotificationCopyWithImpl<$Res, _$AppNotificationImpl>
    implements _$$AppNotificationImplCopyWith<$Res> {
  __$$AppNotificationImplCopyWithImpl(
      _$AppNotificationImpl _value, $Res Function(_$AppNotificationImpl) _then)
      : super(_value, _then);

  /// Create a copy of AppNotification
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? description = null,
    Object? source = freezed,
  }) {
    return _then(_$AppNotificationImpl(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      source: freezed == source
          ? _value.source
          : source // ignore: cast_nullable_to_non_nullable
              as NotificationSource?,
    ));
  }
}

/// @nodoc

class _$AppNotificationImpl
    with DiagnosticableTreeMixin
    implements _AppNotification {
  const _$AppNotificationImpl(
      {required this.title, required this.description, this.source});

  @override
  final String title;
  @override
  final String description;
  @override
  final NotificationSource? source;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AppNotification(title: $title, description: $description, source: $source)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'AppNotification'))
      ..add(DiagnosticsProperty('title', title))
      ..add(DiagnosticsProperty('description', description))
      ..add(DiagnosticsProperty('source', source));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AppNotificationImpl &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.source, source) || other.source == source));
  }

  @override
  int get hashCode => Object.hash(runtimeType, title, description, source);

  /// Create a copy of AppNotification
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AppNotificationImplCopyWith<_$AppNotificationImpl> get copyWith =>
      __$$AppNotificationImplCopyWithImpl<_$AppNotificationImpl>(
          this, _$identity);
}

abstract class _AppNotification implements AppNotification {
  const factory _AppNotification(
      {required final String title,
      required final String description,
      final NotificationSource? source}) = _$AppNotificationImpl;

  @override
  String get title;
  @override
  String get description;
  @override
  NotificationSource? get source;

  /// Create a copy of AppNotification
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AppNotificationImplCopyWith<_$AppNotificationImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$Notifications {
  String get channelID => throw _privateConstructorUsedError;
  String get channelName => throw _privateConstructorUsedError;
  String get channelDescription => throw _privateConstructorUsedError;
  FlutterLocalNotificationsPlugin get plugin =>
      throw _privateConstructorUsedError;
  Map<NotificationSource, int> get notificationCount =>
      throw _privateConstructorUsedError;

  /// Create a copy of Notifications
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $NotificationsCopyWith<Notifications> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NotificationsCopyWith<$Res> {
  factory $NotificationsCopyWith(
          Notifications value, $Res Function(Notifications) then) =
      _$NotificationsCopyWithImpl<$Res, Notifications>;
  @useResult
  $Res call(
      {String channelID,
      String channelName,
      String channelDescription,
      FlutterLocalNotificationsPlugin plugin,
      Map<NotificationSource, int> notificationCount});
}

/// @nodoc
class _$NotificationsCopyWithImpl<$Res, $Val extends Notifications>
    implements $NotificationsCopyWith<$Res> {
  _$NotificationsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Notifications
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? channelID = null,
    Object? channelName = null,
    Object? channelDescription = null,
    Object? plugin = null,
    Object? notificationCount = null,
  }) {
    return _then(_value.copyWith(
      channelID: null == channelID
          ? _value.channelID
          : channelID // ignore: cast_nullable_to_non_nullable
              as String,
      channelName: null == channelName
          ? _value.channelName
          : channelName // ignore: cast_nullable_to_non_nullable
              as String,
      channelDescription: null == channelDescription
          ? _value.channelDescription
          : channelDescription // ignore: cast_nullable_to_non_nullable
              as String,
      plugin: null == plugin
          ? _value.plugin
          : plugin // ignore: cast_nullable_to_non_nullable
              as FlutterLocalNotificationsPlugin,
      notificationCount: null == notificationCount
          ? _value.notificationCount
          : notificationCount // ignore: cast_nullable_to_non_nullable
              as Map<NotificationSource, int>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$NotificationsImplCopyWith<$Res>
    implements $NotificationsCopyWith<$Res> {
  factory _$$NotificationsImplCopyWith(
          _$NotificationsImpl value, $Res Function(_$NotificationsImpl) then) =
      __$$NotificationsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String channelID,
      String channelName,
      String channelDescription,
      FlutterLocalNotificationsPlugin plugin,
      Map<NotificationSource, int> notificationCount});
}

/// @nodoc
class __$$NotificationsImplCopyWithImpl<$Res>
    extends _$NotificationsCopyWithImpl<$Res, _$NotificationsImpl>
    implements _$$NotificationsImplCopyWith<$Res> {
  __$$NotificationsImplCopyWithImpl(
      _$NotificationsImpl _value, $Res Function(_$NotificationsImpl) _then)
      : super(_value, _then);

  /// Create a copy of Notifications
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? channelID = null,
    Object? channelName = null,
    Object? channelDescription = null,
    Object? plugin = null,
    Object? notificationCount = null,
  }) {
    return _then(_$NotificationsImpl(
      channelID: null == channelID
          ? _value.channelID
          : channelID // ignore: cast_nullable_to_non_nullable
              as String,
      channelName: null == channelName
          ? _value.channelName
          : channelName // ignore: cast_nullable_to_non_nullable
              as String,
      channelDescription: null == channelDescription
          ? _value.channelDescription
          : channelDescription // ignore: cast_nullable_to_non_nullable
              as String,
      plugin: null == plugin
          ? _value.plugin
          : plugin // ignore: cast_nullable_to_non_nullable
              as FlutterLocalNotificationsPlugin,
      notificationCount: null == notificationCount
          ? _value.notificationCount
          : notificationCount // ignore: cast_nullable_to_non_nullable
              as Map<NotificationSource, int>,
    ));
  }
}

/// @nodoc

class _$NotificationsImpl extends _Notifications with DiagnosticableTreeMixin {
  _$NotificationsImpl(
      {required this.channelID,
      required this.channelName,
      required this.channelDescription,
      required this.plugin,
      required this.notificationCount})
      : super._();

  @override
  final String channelID;
  @override
  final String channelName;
  @override
  final String channelDescription;
  @override
  final FlutterLocalNotificationsPlugin plugin;
  @override
  final Map<NotificationSource, int> notificationCount;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Notifications(channelID: $channelID, channelName: $channelName, channelDescription: $channelDescription, plugin: $plugin, notificationCount: $notificationCount)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Notifications'))
      ..add(DiagnosticsProperty('channelID', channelID))
      ..add(DiagnosticsProperty('channelName', channelName))
      ..add(DiagnosticsProperty('channelDescription', channelDescription))
      ..add(DiagnosticsProperty('plugin', plugin))
      ..add(DiagnosticsProperty('notificationCount', notificationCount));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NotificationsImpl &&
            (identical(other.channelID, channelID) ||
                other.channelID == channelID) &&
            (identical(other.channelName, channelName) ||
                other.channelName == channelName) &&
            (identical(other.channelDescription, channelDescription) ||
                other.channelDescription == channelDescription) &&
            (identical(other.plugin, plugin) || other.plugin == plugin) &&
            const DeepCollectionEquality()
                .equals(other.notificationCount, notificationCount));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      channelID,
      channelName,
      channelDescription,
      plugin,
      const DeepCollectionEquality().hash(notificationCount));

  /// Create a copy of Notifications
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$NotificationsImplCopyWith<_$NotificationsImpl> get copyWith =>
      __$$NotificationsImplCopyWithImpl<_$NotificationsImpl>(this, _$identity);
}

abstract class _Notifications extends Notifications {
  factory _Notifications(
          {required final String channelID,
          required final String channelName,
          required final String channelDescription,
          required final FlutterLocalNotificationsPlugin plugin,
          required final Map<NotificationSource, int> notificationCount}) =
      _$NotificationsImpl;
  _Notifications._() : super._();

  @override
  String get channelID;
  @override
  String get channelName;
  @override
  String get channelDescription;
  @override
  FlutterLocalNotificationsPlugin get plugin;
  @override
  Map<NotificationSource, int> get notificationCount;

  /// Create a copy of Notifications
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$NotificationsImplCopyWith<_$NotificationsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
