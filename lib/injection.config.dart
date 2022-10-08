// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import 'application/notes/note_actor/note_actor_bloc.dart' as _i3;
import 'application/notes/note_form/note_form_bloc.dart' as _i4;
import 'application/notes/note_watcher/note_form_bloc.dart'
    as _i5; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(
  _i1.GetIt get, {
  String? environment,
  _i2.EnvironmentFilter? environmentFilter,
}) {
  final gh = _i2.GetItHelper(
    get,
    environment,
    environmentFilter,
  );
  gh.factory<_i3.NoteActorBloc>(() => _i3.NoteActorBloc());
  gh.factory<_i4.NoteFormBloc>(() => _i4.NoteFormBloc());
  gh.factory<_i5.NoteFormBloc>(() => _i5.NoteFormBloc());
  return get;
}
