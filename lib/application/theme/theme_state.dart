part of 'theme_bloc.dart';

@freezed
class ThemeState extends Equatable with _$ThemeState{

  const factory ThemeState({
    required AppTheme currentAppTheme,
  }) = _ThemeState;

  factory ThemeState.initial() => const ThemeState(currentAppTheme: AppTheme.dark);

  @override
  List<Object?> get props => [currentAppTheme];

  // this is required to implement equatable
  const ThemeState._();
}
