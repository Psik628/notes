import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:notes/themes.dart';

part 'theme_event.dart';
part 'theme_state.dart';
part 'theme_bloc.freezed.dart';

@injectable
class ThemeBloc extends Bloc<ThemeEvent, ThemeState> {
  ThemeBloc() : super(ThemeState.initial()) {
    on<ThemeChanged>((ThemeChanged event, emit) {
      emit(ThemeState(currentAppTheme: event.appTheme));
    });
  }
}
