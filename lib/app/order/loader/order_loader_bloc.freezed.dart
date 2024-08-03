// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'order_loader_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$OrderLoaderEvent {
  bool get showEmptyOrders => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool showEmptyOrders) fetched,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool showEmptyOrders)? fetched,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool showEmptyOrders)? fetched,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Fetched value) fetched,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Fetched value)? fetched,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Fetched value)? fetched,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $OrderLoaderEventCopyWith<OrderLoaderEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderLoaderEventCopyWith<$Res> {
  factory $OrderLoaderEventCopyWith(
          OrderLoaderEvent value, $Res Function(OrderLoaderEvent) then) =
      _$OrderLoaderEventCopyWithImpl<$Res, OrderLoaderEvent>;
  @useResult
  $Res call({bool showEmptyOrders});
}

/// @nodoc
class _$OrderLoaderEventCopyWithImpl<$Res, $Val extends OrderLoaderEvent>
    implements $OrderLoaderEventCopyWith<$Res> {
  _$OrderLoaderEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? showEmptyOrders = null,
  }) {
    return _then(_value.copyWith(
      showEmptyOrders: null == showEmptyOrders
          ? _value.showEmptyOrders
          : showEmptyOrders // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FetchedImplCopyWith<$Res>
    implements $OrderLoaderEventCopyWith<$Res> {
  factory _$$FetchedImplCopyWith(
          _$FetchedImpl value, $Res Function(_$FetchedImpl) then) =
      __$$FetchedImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool showEmptyOrders});
}

/// @nodoc
class __$$FetchedImplCopyWithImpl<$Res>
    extends _$OrderLoaderEventCopyWithImpl<$Res, _$FetchedImpl>
    implements _$$FetchedImplCopyWith<$Res> {
  __$$FetchedImplCopyWithImpl(
      _$FetchedImpl _value, $Res Function(_$FetchedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? showEmptyOrders = null,
  }) {
    return _then(_$FetchedImpl(
      showEmptyOrders: null == showEmptyOrders
          ? _value.showEmptyOrders
          : showEmptyOrders // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$FetchedImpl implements _Fetched {
  const _$FetchedImpl({this.showEmptyOrders = false});

  @override
  @JsonKey()
  final bool showEmptyOrders;

  @override
  String toString() {
    return 'OrderLoaderEvent.fetched(showEmptyOrders: $showEmptyOrders)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FetchedImpl &&
            (identical(other.showEmptyOrders, showEmptyOrders) ||
                other.showEmptyOrders == showEmptyOrders));
  }

  @override
  int get hashCode => Object.hash(runtimeType, showEmptyOrders);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FetchedImplCopyWith<_$FetchedImpl> get copyWith =>
      __$$FetchedImplCopyWithImpl<_$FetchedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool showEmptyOrders) fetched,
  }) {
    return fetched(showEmptyOrders);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool showEmptyOrders)? fetched,
  }) {
    return fetched?.call(showEmptyOrders);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool showEmptyOrders)? fetched,
    required TResult orElse(),
  }) {
    if (fetched != null) {
      return fetched(showEmptyOrders);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Fetched value) fetched,
  }) {
    return fetched(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Fetched value)? fetched,
  }) {
    return fetched?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Fetched value)? fetched,
    required TResult orElse(),
  }) {
    if (fetched != null) {
      return fetched(this);
    }
    return orElse();
  }
}

abstract class _Fetched implements OrderLoaderEvent {
  const factory _Fetched({final bool showEmptyOrders}) = _$FetchedImpl;

  @override
  bool get showEmptyOrders;
  @override
  @JsonKey(ignore: true)
  _$$FetchedImplCopyWith<_$FetchedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$OrderLoaderState {
  List<Order> get orders => throw _privateConstructorUsedError;
  Option<OrderFailure> get failureOption => throw _privateConstructorUsedError;
  bool get loadInProgress => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $OrderLoaderStateCopyWith<OrderLoaderState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderLoaderStateCopyWith<$Res> {
  factory $OrderLoaderStateCopyWith(
          OrderLoaderState value, $Res Function(OrderLoaderState) then) =
      _$OrderLoaderStateCopyWithImpl<$Res, OrderLoaderState>;
  @useResult
  $Res call(
      {List<Order> orders,
      Option<OrderFailure> failureOption,
      bool loadInProgress});
}

/// @nodoc
class _$OrderLoaderStateCopyWithImpl<$Res, $Val extends OrderLoaderState>
    implements $OrderLoaderStateCopyWith<$Res> {
  _$OrderLoaderStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? orders = null,
    Object? failureOption = null,
    Object? loadInProgress = null,
  }) {
    return _then(_value.copyWith(
      orders: null == orders
          ? _value.orders
          : orders // ignore: cast_nullable_to_non_nullable
              as List<Order>,
      failureOption: null == failureOption
          ? _value.failureOption
          : failureOption // ignore: cast_nullable_to_non_nullable
              as Option<OrderFailure>,
      loadInProgress: null == loadInProgress
          ? _value.loadInProgress
          : loadInProgress // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$OrderLoaderStateImplCopyWith<$Res>
    implements $OrderLoaderStateCopyWith<$Res> {
  factory _$$OrderLoaderStateImplCopyWith(_$OrderLoaderStateImpl value,
          $Res Function(_$OrderLoaderStateImpl) then) =
      __$$OrderLoaderStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<Order> orders,
      Option<OrderFailure> failureOption,
      bool loadInProgress});
}

/// @nodoc
class __$$OrderLoaderStateImplCopyWithImpl<$Res>
    extends _$OrderLoaderStateCopyWithImpl<$Res, _$OrderLoaderStateImpl>
    implements _$$OrderLoaderStateImplCopyWith<$Res> {
  __$$OrderLoaderStateImplCopyWithImpl(_$OrderLoaderStateImpl _value,
      $Res Function(_$OrderLoaderStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? orders = null,
    Object? failureOption = null,
    Object? loadInProgress = null,
  }) {
    return _then(_$OrderLoaderStateImpl(
      orders: null == orders
          ? _value._orders
          : orders // ignore: cast_nullable_to_non_nullable
              as List<Order>,
      failureOption: null == failureOption
          ? _value.failureOption
          : failureOption // ignore: cast_nullable_to_non_nullable
              as Option<OrderFailure>,
      loadInProgress: null == loadInProgress
          ? _value.loadInProgress
          : loadInProgress // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$OrderLoaderStateImpl implements _OrderLoaderState {
  const _$OrderLoaderStateImpl(
      {required final List<Order> orders,
      required this.failureOption,
      this.loadInProgress = false})
      : _orders = orders;

  final List<Order> _orders;
  @override
  List<Order> get orders {
    if (_orders is EqualUnmodifiableListView) return _orders;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_orders);
  }

  @override
  final Option<OrderFailure> failureOption;
  @override
  @JsonKey()
  final bool loadInProgress;

  @override
  String toString() {
    return 'OrderLoaderState(orders: $orders, failureOption: $failureOption, loadInProgress: $loadInProgress)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OrderLoaderStateImpl &&
            const DeepCollectionEquality().equals(other._orders, _orders) &&
            (identical(other.failureOption, failureOption) ||
                other.failureOption == failureOption) &&
            (identical(other.loadInProgress, loadInProgress) ||
                other.loadInProgress == loadInProgress));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_orders),
      failureOption,
      loadInProgress);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OrderLoaderStateImplCopyWith<_$OrderLoaderStateImpl> get copyWith =>
      __$$OrderLoaderStateImplCopyWithImpl<_$OrderLoaderStateImpl>(
          this, _$identity);
}

abstract class _OrderLoaderState implements OrderLoaderState {
  const factory _OrderLoaderState(
      {required final List<Order> orders,
      required final Option<OrderFailure> failureOption,
      final bool loadInProgress}) = _$OrderLoaderStateImpl;

  @override
  List<Order> get orders;
  @override
  Option<OrderFailure> get failureOption;
  @override
  bool get loadInProgress;
  @override
  @JsonKey(ignore: true)
  _$$OrderLoaderStateImplCopyWith<_$OrderLoaderStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
