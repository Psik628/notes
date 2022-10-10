// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'note_actor_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$NoteActorEvent {
  Note get note => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Note note) deleted,
    required TResult Function(Note note) starred,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Note note)? deleted,
    TResult Function(Note note)? starred,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Note note)? deleted,
    TResult Function(Note note)? starred,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Deleted value) deleted,
    required TResult Function(Starred value) starred,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Deleted value)? deleted,
    TResult Function(Starred value)? starred,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Deleted value)? deleted,
    TResult Function(Starred value)? starred,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $NoteActorEventCopyWith<NoteActorEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NoteActorEventCopyWith<$Res> {
  factory $NoteActorEventCopyWith(
          NoteActorEvent value, $Res Function(NoteActorEvent) then) =
      _$NoteActorEventCopyWithImpl<$Res>;
  $Res call({Note note});
}

/// @nodoc
class _$NoteActorEventCopyWithImpl<$Res>
    implements $NoteActorEventCopyWith<$Res> {
  _$NoteActorEventCopyWithImpl(this._value, this._then);

  final NoteActorEvent _value;
  // ignore: unused_field
  final $Res Function(NoteActorEvent) _then;

  @override
  $Res call({
    Object? note = freezed,
  }) {
    return _then(_value.copyWith(
      note: note == freezed
          ? _value.note
          : note // ignore: cast_nullable_to_non_nullable
              as Note,
    ));
  }
}

/// @nodoc
abstract class _$$DeletedCopyWith<$Res>
    implements $NoteActorEventCopyWith<$Res> {
  factory _$$DeletedCopyWith(_$Deleted value, $Res Function(_$Deleted) then) =
      __$$DeletedCopyWithImpl<$Res>;
  @override
  $Res call({Note note});
}

/// @nodoc
class __$$DeletedCopyWithImpl<$Res> extends _$NoteActorEventCopyWithImpl<$Res>
    implements _$$DeletedCopyWith<$Res> {
  __$$DeletedCopyWithImpl(_$Deleted _value, $Res Function(_$Deleted) _then)
      : super(_value, (v) => _then(v as _$Deleted));

  @override
  _$Deleted get _value => super._value as _$Deleted;

  @override
  $Res call({
    Object? note = freezed,
  }) {
    return _then(_$Deleted(
      note == freezed
          ? _value.note
          : note // ignore: cast_nullable_to_non_nullable
              as Note,
    ));
  }
}

/// @nodoc

class _$Deleted implements Deleted {
  const _$Deleted(this.note);

  @override
  final Note note;

  @override
  String toString() {
    return 'NoteActorEvent.deleted(note: $note)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$Deleted &&
            const DeepCollectionEquality().equals(other.note, note));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(note));

  @JsonKey(ignore: true)
  @override
  _$$DeletedCopyWith<_$Deleted> get copyWith =>
      __$$DeletedCopyWithImpl<_$Deleted>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Note note) deleted,
    required TResult Function(Note note) starred,
  }) {
    return deleted(note);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Note note)? deleted,
    TResult Function(Note note)? starred,
  }) {
    return deleted?.call(note);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Note note)? deleted,
    TResult Function(Note note)? starred,
    required TResult orElse(),
  }) {
    if (deleted != null) {
      return deleted(note);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Deleted value) deleted,
    required TResult Function(Starred value) starred,
  }) {
    return deleted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Deleted value)? deleted,
    TResult Function(Starred value)? starred,
  }) {
    return deleted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Deleted value)? deleted,
    TResult Function(Starred value)? starred,
    required TResult orElse(),
  }) {
    if (deleted != null) {
      return deleted(this);
    }
    return orElse();
  }
}

abstract class Deleted implements NoteActorEvent {
  const factory Deleted(final Note note) = _$Deleted;

  @override
  Note get note;
  @override
  @JsonKey(ignore: true)
  _$$DeletedCopyWith<_$Deleted> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$StarredCopyWith<$Res>
    implements $NoteActorEventCopyWith<$Res> {
  factory _$$StarredCopyWith(_$Starred value, $Res Function(_$Starred) then) =
      __$$StarredCopyWithImpl<$Res>;
  @override
  $Res call({Note note});
}

/// @nodoc
class __$$StarredCopyWithImpl<$Res> extends _$NoteActorEventCopyWithImpl<$Res>
    implements _$$StarredCopyWith<$Res> {
  __$$StarredCopyWithImpl(_$Starred _value, $Res Function(_$Starred) _then)
      : super(_value, (v) => _then(v as _$Starred));

  @override
  _$Starred get _value => super._value as _$Starred;

  @override
  $Res call({
    Object? note = freezed,
  }) {
    return _then(_$Starred(
      note == freezed
          ? _value.note
          : note // ignore: cast_nullable_to_non_nullable
              as Note,
    ));
  }
}

/// @nodoc

class _$Starred implements Starred {
  const _$Starred(this.note);

  @override
  final Note note;

  @override
  String toString() {
    return 'NoteActorEvent.starred(note: $note)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$Starred &&
            const DeepCollectionEquality().equals(other.note, note));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(note));

  @JsonKey(ignore: true)
  @override
  _$$StarredCopyWith<_$Starred> get copyWith =>
      __$$StarredCopyWithImpl<_$Starred>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Note note) deleted,
    required TResult Function(Note note) starred,
  }) {
    return starred(note);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Note note)? deleted,
    TResult Function(Note note)? starred,
  }) {
    return starred?.call(note);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Note note)? deleted,
    TResult Function(Note note)? starred,
    required TResult orElse(),
  }) {
    if (starred != null) {
      return starred(note);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Deleted value) deleted,
    required TResult Function(Starred value) starred,
  }) {
    return starred(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Deleted value)? deleted,
    TResult Function(Starred value)? starred,
  }) {
    return starred?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Deleted value)? deleted,
    TResult Function(Starred value)? starred,
    required TResult orElse(),
  }) {
    if (starred != null) {
      return starred(this);
    }
    return orElse();
  }
}

abstract class Starred implements NoteActorEvent {
  const factory Starred(final Note note) = _$Starred;

  @override
  Note get note;
  @override
  @JsonKey(ignore: true)
  _$$StarredCopyWith<_$Starred> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$NoteActorState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() actionInProgress,
    required TResult Function(NoteFailure noteFailure) deleteFailure,
    required TResult Function() deleteSuccess,
    required TResult Function() starSuccess,
    required TResult Function(NoteFailure noteFailure) starFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? actionInProgress,
    TResult Function(NoteFailure noteFailure)? deleteFailure,
    TResult Function()? deleteSuccess,
    TResult Function()? starSuccess,
    TResult Function(NoteFailure noteFailure)? starFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? actionInProgress,
    TResult Function(NoteFailure noteFailure)? deleteFailure,
    TResult Function()? deleteSuccess,
    TResult Function()? starSuccess,
    TResult Function(NoteFailure noteFailure)? starFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(ActionInProgress value) actionInProgress,
    required TResult Function(DeleteFailure value) deleteFailure,
    required TResult Function(DeleteSuccess value) deleteSuccess,
    required TResult Function(StarSuccess value) starSuccess,
    required TResult Function(StarFailure value) starFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(ActionInProgress value)? actionInProgress,
    TResult Function(DeleteFailure value)? deleteFailure,
    TResult Function(DeleteSuccess value)? deleteSuccess,
    TResult Function(StarSuccess value)? starSuccess,
    TResult Function(StarFailure value)? starFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(ActionInProgress value)? actionInProgress,
    TResult Function(DeleteFailure value)? deleteFailure,
    TResult Function(DeleteSuccess value)? deleteSuccess,
    TResult Function(StarSuccess value)? starSuccess,
    TResult Function(StarFailure value)? starFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NoteActorStateCopyWith<$Res> {
  factory $NoteActorStateCopyWith(
          NoteActorState value, $Res Function(NoteActorState) then) =
      _$NoteActorStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$NoteActorStateCopyWithImpl<$Res>
    implements $NoteActorStateCopyWith<$Res> {
  _$NoteActorStateCopyWithImpl(this._value, this._then);

  final NoteActorState _value;
  // ignore: unused_field
  final $Res Function(NoteActorState) _then;
}

/// @nodoc
abstract class _$$InitialCopyWith<$Res> {
  factory _$$InitialCopyWith(_$Initial value, $Res Function(_$Initial) then) =
      __$$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialCopyWithImpl<$Res> extends _$NoteActorStateCopyWithImpl<$Res>
    implements _$$InitialCopyWith<$Res> {
  __$$InitialCopyWithImpl(_$Initial _value, $Res Function(_$Initial) _then)
      : super(_value, (v) => _then(v as _$Initial));

  @override
  _$Initial get _value => super._value as _$Initial;
}

/// @nodoc

class _$Initial implements Initial {
  const _$Initial();

  @override
  String toString() {
    return 'NoteActorState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() actionInProgress,
    required TResult Function(NoteFailure noteFailure) deleteFailure,
    required TResult Function() deleteSuccess,
    required TResult Function() starSuccess,
    required TResult Function(NoteFailure noteFailure) starFailure,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? actionInProgress,
    TResult Function(NoteFailure noteFailure)? deleteFailure,
    TResult Function()? deleteSuccess,
    TResult Function()? starSuccess,
    TResult Function(NoteFailure noteFailure)? starFailure,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? actionInProgress,
    TResult Function(NoteFailure noteFailure)? deleteFailure,
    TResult Function()? deleteSuccess,
    TResult Function()? starSuccess,
    TResult Function(NoteFailure noteFailure)? starFailure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(ActionInProgress value) actionInProgress,
    required TResult Function(DeleteFailure value) deleteFailure,
    required TResult Function(DeleteSuccess value) deleteSuccess,
    required TResult Function(StarSuccess value) starSuccess,
    required TResult Function(StarFailure value) starFailure,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(ActionInProgress value)? actionInProgress,
    TResult Function(DeleteFailure value)? deleteFailure,
    TResult Function(DeleteSuccess value)? deleteSuccess,
    TResult Function(StarSuccess value)? starSuccess,
    TResult Function(StarFailure value)? starFailure,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(ActionInProgress value)? actionInProgress,
    TResult Function(DeleteFailure value)? deleteFailure,
    TResult Function(DeleteSuccess value)? deleteSuccess,
    TResult Function(StarSuccess value)? starSuccess,
    TResult Function(StarFailure value)? starFailure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class Initial implements NoteActorState {
  const factory Initial() = _$Initial;
}

/// @nodoc
abstract class _$$ActionInProgressCopyWith<$Res> {
  factory _$$ActionInProgressCopyWith(
          _$ActionInProgress value, $Res Function(_$ActionInProgress) then) =
      __$$ActionInProgressCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ActionInProgressCopyWithImpl<$Res>
    extends _$NoteActorStateCopyWithImpl<$Res>
    implements _$$ActionInProgressCopyWith<$Res> {
  __$$ActionInProgressCopyWithImpl(
      _$ActionInProgress _value, $Res Function(_$ActionInProgress) _then)
      : super(_value, (v) => _then(v as _$ActionInProgress));

  @override
  _$ActionInProgress get _value => super._value as _$ActionInProgress;
}

/// @nodoc

class _$ActionInProgress implements ActionInProgress {
  const _$ActionInProgress();

  @override
  String toString() {
    return 'NoteActorState.actionInProgress()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ActionInProgress);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() actionInProgress,
    required TResult Function(NoteFailure noteFailure) deleteFailure,
    required TResult Function() deleteSuccess,
    required TResult Function() starSuccess,
    required TResult Function(NoteFailure noteFailure) starFailure,
  }) {
    return actionInProgress();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? actionInProgress,
    TResult Function(NoteFailure noteFailure)? deleteFailure,
    TResult Function()? deleteSuccess,
    TResult Function()? starSuccess,
    TResult Function(NoteFailure noteFailure)? starFailure,
  }) {
    return actionInProgress?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? actionInProgress,
    TResult Function(NoteFailure noteFailure)? deleteFailure,
    TResult Function()? deleteSuccess,
    TResult Function()? starSuccess,
    TResult Function(NoteFailure noteFailure)? starFailure,
    required TResult orElse(),
  }) {
    if (actionInProgress != null) {
      return actionInProgress();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(ActionInProgress value) actionInProgress,
    required TResult Function(DeleteFailure value) deleteFailure,
    required TResult Function(DeleteSuccess value) deleteSuccess,
    required TResult Function(StarSuccess value) starSuccess,
    required TResult Function(StarFailure value) starFailure,
  }) {
    return actionInProgress(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(ActionInProgress value)? actionInProgress,
    TResult Function(DeleteFailure value)? deleteFailure,
    TResult Function(DeleteSuccess value)? deleteSuccess,
    TResult Function(StarSuccess value)? starSuccess,
    TResult Function(StarFailure value)? starFailure,
  }) {
    return actionInProgress?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(ActionInProgress value)? actionInProgress,
    TResult Function(DeleteFailure value)? deleteFailure,
    TResult Function(DeleteSuccess value)? deleteSuccess,
    TResult Function(StarSuccess value)? starSuccess,
    TResult Function(StarFailure value)? starFailure,
    required TResult orElse(),
  }) {
    if (actionInProgress != null) {
      return actionInProgress(this);
    }
    return orElse();
  }
}

abstract class ActionInProgress implements NoteActorState {
  const factory ActionInProgress() = _$ActionInProgress;
}

/// @nodoc
abstract class _$$DeleteFailureCopyWith<$Res> {
  factory _$$DeleteFailureCopyWith(
          _$DeleteFailure value, $Res Function(_$DeleteFailure) then) =
      __$$DeleteFailureCopyWithImpl<$Res>;
  $Res call({NoteFailure noteFailure});

  $NoteFailureCopyWith<$Res> get noteFailure;
}

/// @nodoc
class __$$DeleteFailureCopyWithImpl<$Res>
    extends _$NoteActorStateCopyWithImpl<$Res>
    implements _$$DeleteFailureCopyWith<$Res> {
  __$$DeleteFailureCopyWithImpl(
      _$DeleteFailure _value, $Res Function(_$DeleteFailure) _then)
      : super(_value, (v) => _then(v as _$DeleteFailure));

  @override
  _$DeleteFailure get _value => super._value as _$DeleteFailure;

  @override
  $Res call({
    Object? noteFailure = freezed,
  }) {
    return _then(_$DeleteFailure(
      noteFailure == freezed
          ? _value.noteFailure
          : noteFailure // ignore: cast_nullable_to_non_nullable
              as NoteFailure,
    ));
  }

  @override
  $NoteFailureCopyWith<$Res> get noteFailure {
    return $NoteFailureCopyWith<$Res>(_value.noteFailure, (value) {
      return _then(_value.copyWith(noteFailure: value));
    });
  }
}

/// @nodoc

class _$DeleteFailure implements DeleteFailure {
  const _$DeleteFailure(this.noteFailure);

  @override
  final NoteFailure noteFailure;

  @override
  String toString() {
    return 'NoteActorState.deleteFailure(noteFailure: $noteFailure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeleteFailure &&
            const DeepCollectionEquality()
                .equals(other.noteFailure, noteFailure));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(noteFailure));

  @JsonKey(ignore: true)
  @override
  _$$DeleteFailureCopyWith<_$DeleteFailure> get copyWith =>
      __$$DeleteFailureCopyWithImpl<_$DeleteFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() actionInProgress,
    required TResult Function(NoteFailure noteFailure) deleteFailure,
    required TResult Function() deleteSuccess,
    required TResult Function() starSuccess,
    required TResult Function(NoteFailure noteFailure) starFailure,
  }) {
    return deleteFailure(noteFailure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? actionInProgress,
    TResult Function(NoteFailure noteFailure)? deleteFailure,
    TResult Function()? deleteSuccess,
    TResult Function()? starSuccess,
    TResult Function(NoteFailure noteFailure)? starFailure,
  }) {
    return deleteFailure?.call(noteFailure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? actionInProgress,
    TResult Function(NoteFailure noteFailure)? deleteFailure,
    TResult Function()? deleteSuccess,
    TResult Function()? starSuccess,
    TResult Function(NoteFailure noteFailure)? starFailure,
    required TResult orElse(),
  }) {
    if (deleteFailure != null) {
      return deleteFailure(noteFailure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(ActionInProgress value) actionInProgress,
    required TResult Function(DeleteFailure value) deleteFailure,
    required TResult Function(DeleteSuccess value) deleteSuccess,
    required TResult Function(StarSuccess value) starSuccess,
    required TResult Function(StarFailure value) starFailure,
  }) {
    return deleteFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(ActionInProgress value)? actionInProgress,
    TResult Function(DeleteFailure value)? deleteFailure,
    TResult Function(DeleteSuccess value)? deleteSuccess,
    TResult Function(StarSuccess value)? starSuccess,
    TResult Function(StarFailure value)? starFailure,
  }) {
    return deleteFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(ActionInProgress value)? actionInProgress,
    TResult Function(DeleteFailure value)? deleteFailure,
    TResult Function(DeleteSuccess value)? deleteSuccess,
    TResult Function(StarSuccess value)? starSuccess,
    TResult Function(StarFailure value)? starFailure,
    required TResult orElse(),
  }) {
    if (deleteFailure != null) {
      return deleteFailure(this);
    }
    return orElse();
  }
}

abstract class DeleteFailure implements NoteActorState {
  const factory DeleteFailure(final NoteFailure noteFailure) = _$DeleteFailure;

  NoteFailure get noteFailure;
  @JsonKey(ignore: true)
  _$$DeleteFailureCopyWith<_$DeleteFailure> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DeleteSuccessCopyWith<$Res> {
  factory _$$DeleteSuccessCopyWith(
          _$DeleteSuccess value, $Res Function(_$DeleteSuccess) then) =
      __$$DeleteSuccessCopyWithImpl<$Res>;
}

/// @nodoc
class __$$DeleteSuccessCopyWithImpl<$Res>
    extends _$NoteActorStateCopyWithImpl<$Res>
    implements _$$DeleteSuccessCopyWith<$Res> {
  __$$DeleteSuccessCopyWithImpl(
      _$DeleteSuccess _value, $Res Function(_$DeleteSuccess) _then)
      : super(_value, (v) => _then(v as _$DeleteSuccess));

  @override
  _$DeleteSuccess get _value => super._value as _$DeleteSuccess;
}

/// @nodoc

class _$DeleteSuccess implements DeleteSuccess {
  const _$DeleteSuccess();

  @override
  String toString() {
    return 'NoteActorState.deleteSuccess()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$DeleteSuccess);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() actionInProgress,
    required TResult Function(NoteFailure noteFailure) deleteFailure,
    required TResult Function() deleteSuccess,
    required TResult Function() starSuccess,
    required TResult Function(NoteFailure noteFailure) starFailure,
  }) {
    return deleteSuccess();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? actionInProgress,
    TResult Function(NoteFailure noteFailure)? deleteFailure,
    TResult Function()? deleteSuccess,
    TResult Function()? starSuccess,
    TResult Function(NoteFailure noteFailure)? starFailure,
  }) {
    return deleteSuccess?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? actionInProgress,
    TResult Function(NoteFailure noteFailure)? deleteFailure,
    TResult Function()? deleteSuccess,
    TResult Function()? starSuccess,
    TResult Function(NoteFailure noteFailure)? starFailure,
    required TResult orElse(),
  }) {
    if (deleteSuccess != null) {
      return deleteSuccess();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(ActionInProgress value) actionInProgress,
    required TResult Function(DeleteFailure value) deleteFailure,
    required TResult Function(DeleteSuccess value) deleteSuccess,
    required TResult Function(StarSuccess value) starSuccess,
    required TResult Function(StarFailure value) starFailure,
  }) {
    return deleteSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(ActionInProgress value)? actionInProgress,
    TResult Function(DeleteFailure value)? deleteFailure,
    TResult Function(DeleteSuccess value)? deleteSuccess,
    TResult Function(StarSuccess value)? starSuccess,
    TResult Function(StarFailure value)? starFailure,
  }) {
    return deleteSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(ActionInProgress value)? actionInProgress,
    TResult Function(DeleteFailure value)? deleteFailure,
    TResult Function(DeleteSuccess value)? deleteSuccess,
    TResult Function(StarSuccess value)? starSuccess,
    TResult Function(StarFailure value)? starFailure,
    required TResult orElse(),
  }) {
    if (deleteSuccess != null) {
      return deleteSuccess(this);
    }
    return orElse();
  }
}

abstract class DeleteSuccess implements NoteActorState {
  const factory DeleteSuccess() = _$DeleteSuccess;
}

/// @nodoc
abstract class _$$StarSuccessCopyWith<$Res> {
  factory _$$StarSuccessCopyWith(
          _$StarSuccess value, $Res Function(_$StarSuccess) then) =
      __$$StarSuccessCopyWithImpl<$Res>;
}

/// @nodoc
class __$$StarSuccessCopyWithImpl<$Res>
    extends _$NoteActorStateCopyWithImpl<$Res>
    implements _$$StarSuccessCopyWith<$Res> {
  __$$StarSuccessCopyWithImpl(
      _$StarSuccess _value, $Res Function(_$StarSuccess) _then)
      : super(_value, (v) => _then(v as _$StarSuccess));

  @override
  _$StarSuccess get _value => super._value as _$StarSuccess;
}

/// @nodoc

class _$StarSuccess implements StarSuccess {
  const _$StarSuccess();

  @override
  String toString() {
    return 'NoteActorState.starSuccess()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$StarSuccess);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() actionInProgress,
    required TResult Function(NoteFailure noteFailure) deleteFailure,
    required TResult Function() deleteSuccess,
    required TResult Function() starSuccess,
    required TResult Function(NoteFailure noteFailure) starFailure,
  }) {
    return starSuccess();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? actionInProgress,
    TResult Function(NoteFailure noteFailure)? deleteFailure,
    TResult Function()? deleteSuccess,
    TResult Function()? starSuccess,
    TResult Function(NoteFailure noteFailure)? starFailure,
  }) {
    return starSuccess?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? actionInProgress,
    TResult Function(NoteFailure noteFailure)? deleteFailure,
    TResult Function()? deleteSuccess,
    TResult Function()? starSuccess,
    TResult Function(NoteFailure noteFailure)? starFailure,
    required TResult orElse(),
  }) {
    if (starSuccess != null) {
      return starSuccess();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(ActionInProgress value) actionInProgress,
    required TResult Function(DeleteFailure value) deleteFailure,
    required TResult Function(DeleteSuccess value) deleteSuccess,
    required TResult Function(StarSuccess value) starSuccess,
    required TResult Function(StarFailure value) starFailure,
  }) {
    return starSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(ActionInProgress value)? actionInProgress,
    TResult Function(DeleteFailure value)? deleteFailure,
    TResult Function(DeleteSuccess value)? deleteSuccess,
    TResult Function(StarSuccess value)? starSuccess,
    TResult Function(StarFailure value)? starFailure,
  }) {
    return starSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(ActionInProgress value)? actionInProgress,
    TResult Function(DeleteFailure value)? deleteFailure,
    TResult Function(DeleteSuccess value)? deleteSuccess,
    TResult Function(StarSuccess value)? starSuccess,
    TResult Function(StarFailure value)? starFailure,
    required TResult orElse(),
  }) {
    if (starSuccess != null) {
      return starSuccess(this);
    }
    return orElse();
  }
}

abstract class StarSuccess implements NoteActorState {
  const factory StarSuccess() = _$StarSuccess;
}

/// @nodoc
abstract class _$$StarFailureCopyWith<$Res> {
  factory _$$StarFailureCopyWith(
          _$StarFailure value, $Res Function(_$StarFailure) then) =
      __$$StarFailureCopyWithImpl<$Res>;
  $Res call({NoteFailure noteFailure});

  $NoteFailureCopyWith<$Res> get noteFailure;
}

/// @nodoc
class __$$StarFailureCopyWithImpl<$Res>
    extends _$NoteActorStateCopyWithImpl<$Res>
    implements _$$StarFailureCopyWith<$Res> {
  __$$StarFailureCopyWithImpl(
      _$StarFailure _value, $Res Function(_$StarFailure) _then)
      : super(_value, (v) => _then(v as _$StarFailure));

  @override
  _$StarFailure get _value => super._value as _$StarFailure;

  @override
  $Res call({
    Object? noteFailure = freezed,
  }) {
    return _then(_$StarFailure(
      noteFailure == freezed
          ? _value.noteFailure
          : noteFailure // ignore: cast_nullable_to_non_nullable
              as NoteFailure,
    ));
  }

  @override
  $NoteFailureCopyWith<$Res> get noteFailure {
    return $NoteFailureCopyWith<$Res>(_value.noteFailure, (value) {
      return _then(_value.copyWith(noteFailure: value));
    });
  }
}

/// @nodoc

class _$StarFailure implements StarFailure {
  const _$StarFailure(this.noteFailure);

  @override
  final NoteFailure noteFailure;

  @override
  String toString() {
    return 'NoteActorState.starFailure(noteFailure: $noteFailure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StarFailure &&
            const DeepCollectionEquality()
                .equals(other.noteFailure, noteFailure));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(noteFailure));

  @JsonKey(ignore: true)
  @override
  _$$StarFailureCopyWith<_$StarFailure> get copyWith =>
      __$$StarFailureCopyWithImpl<_$StarFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() actionInProgress,
    required TResult Function(NoteFailure noteFailure) deleteFailure,
    required TResult Function() deleteSuccess,
    required TResult Function() starSuccess,
    required TResult Function(NoteFailure noteFailure) starFailure,
  }) {
    return starFailure(noteFailure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? actionInProgress,
    TResult Function(NoteFailure noteFailure)? deleteFailure,
    TResult Function()? deleteSuccess,
    TResult Function()? starSuccess,
    TResult Function(NoteFailure noteFailure)? starFailure,
  }) {
    return starFailure?.call(noteFailure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? actionInProgress,
    TResult Function(NoteFailure noteFailure)? deleteFailure,
    TResult Function()? deleteSuccess,
    TResult Function()? starSuccess,
    TResult Function(NoteFailure noteFailure)? starFailure,
    required TResult orElse(),
  }) {
    if (starFailure != null) {
      return starFailure(noteFailure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(ActionInProgress value) actionInProgress,
    required TResult Function(DeleteFailure value) deleteFailure,
    required TResult Function(DeleteSuccess value) deleteSuccess,
    required TResult Function(StarSuccess value) starSuccess,
    required TResult Function(StarFailure value) starFailure,
  }) {
    return starFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(ActionInProgress value)? actionInProgress,
    TResult Function(DeleteFailure value)? deleteFailure,
    TResult Function(DeleteSuccess value)? deleteSuccess,
    TResult Function(StarSuccess value)? starSuccess,
    TResult Function(StarFailure value)? starFailure,
  }) {
    return starFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(ActionInProgress value)? actionInProgress,
    TResult Function(DeleteFailure value)? deleteFailure,
    TResult Function(DeleteSuccess value)? deleteSuccess,
    TResult Function(StarSuccess value)? starSuccess,
    TResult Function(StarFailure value)? starFailure,
    required TResult orElse(),
  }) {
    if (starFailure != null) {
      return starFailure(this);
    }
    return orElse();
  }
}

abstract class StarFailure implements NoteActorState {
  const factory StarFailure(final NoteFailure noteFailure) = _$StarFailure;

  NoteFailure get noteFailure;
  @JsonKey(ignore: true)
  _$$StarFailureCopyWith<_$StarFailure> get copyWith =>
      throw _privateConstructorUsedError;
}
