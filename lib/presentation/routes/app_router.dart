import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:notes/presentation/pages/onboarding/onboarding_page.dart';

import '../pages/home/home_page.dart';
import '../pages/note_form/note_form_page.dart';
import '../pages/sign_in/sign_in_page.dart';
import '../pages/splash/splash_page.dart';

part 'app_router.gr.dart';

@MaterialAutoRouter(
  routes: [
    MaterialRoute(page: OnBoardingPage, initial: true),
    MaterialRoute(page: SignInPage),
    // MaterialRoute(page: SignUpPage),
    MaterialRoute(page: HomePage),
    // MaterialRoute(page: ProfilePage),
    // MaterialRoute(page: SettingsPage),
    // MaterialRoute(page: CategoryPage),
    // MaterialRoute(page: SubcategoryPage),
    // MaterialRoute(page: ArticlePage),
    // MaterialRoute(page: QuestionSectionPage),
    // todo just to show fullscreenDialog capabilities
    MaterialRoute(page: NoteFormPage, fullscreenDialog: true)
  ],
)
class AppRouter extends _$AppRouter{}