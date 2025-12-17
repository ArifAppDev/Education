// ignore_for_file: unused_element

import 'dart:io';

import 'package:education/features/class_setting/presentation/class_setting_screen.dart';
import 'package:education/features/class_setting_invite/presentation/class_setting_invite_screen.dart';
import 'package:education/features/general_setting/presentation/general_setting_screen.dart';
import 'package:education/features/home/presentation/home_screen.dart';
import 'package:education/features/join_request/presentation/join_request_teacherscreen.dart';
import 'package:education/features/sent_invitation/presentation/sent_invitation_screen.dart';
import 'package:education/features/subject_details/presentation/subject_details_screen.dart';
import 'package:education/features/subject_teacher/presentation/subject_teacher.dart';
import 'package:flutter/cupertino.dart';

final class Routes {
  static final Routes _routes = Routes._internal();
  Routes._internal();
  static Routes get instance => _routes;

  static const String homeScreen = '/homeScreen';
  static const String classSettingScreen = '/classSettingScreen';
  static const String subjectAndTeacherScreen = '/subjectAndTeacherScreen';
  static const String subjectDetailsScreen = '/subjectDetailsScreen';
  static const String classSettingInviteScreen = '/classSettingInviteScreen';
  static const String sentInvitationScreen = '/sentInvitationScreen';
  static const String joinRequestTeacherScreen = '/joinRequestTeacherScreen';
  static const String generalsettingscreen = '/generalsettingscreen';
}

final class RouteGenerator {
  static final RouteGenerator _routeGenerator = RouteGenerator._internal();
  RouteGenerator._internal();
  static RouteGenerator get instance => _routeGenerator;

  static Route<dynamic>? generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.homeScreen:
        return Platform.isAndroid
            ? _FadedTransitionRoute(widget: HomeScreen(), settings: settings)
            : CupertinoPageRoute(builder: (context) => HomeScreen());

      case Routes.classSettingScreen:
        return Platform.isAndroid
            ? _FadedTransitionRoute(
                widget: ClassSettingScreen(),
                settings: settings,
              )
            : CupertinoPageRoute(builder: (context) => ClassSettingScreen());

      case Routes.subjectAndTeacherScreen:
        return Platform.isAndroid
            ? _FadedTransitionRoute(
                widget: SubjectTeacher(),
                settings: settings,
              )
            : CupertinoPageRoute(builder: (context) => SubjectTeacher());

      case Routes.subjectDetailsScreen:
        return Platform.isAndroid
            ? _FadedTransitionRoute(
                widget: SubjectDetailsScreen(),
                settings: settings,
              )
            : CupertinoPageRoute(builder: (context) => SubjectDetailsScreen());

      case Routes.classSettingInviteScreen:
        return Platform.isAndroid
            ? _FadedTransitionRoute(
                widget: ClassSettingInviteScreen(),
                settings: settings,
              )
            : CupertinoPageRoute(
                builder: (context) => ClassSettingInviteScreen(),
              );

      case Routes.sentInvitationScreen:
        return Platform.isAndroid
            ? _FadedTransitionRoute(
                widget: SentInvitationScreen(),
                settings: settings,
              )
            : CupertinoPageRoute(builder: (context) => SentInvitationScreen());

      case Routes.joinRequestTeacherScreen:
        return Platform.isAndroid
            ? _FadedTransitionRoute(
                widget: JoinRequestTeacherscreen(),
                settings: settings,
              )
            : CupertinoPageRoute(
                builder: (context) => JoinRequestTeacherscreen(),
              );

      case Routes.generalsettingscreen:
        return Platform.isAndroid
            ? _FadedTransitionRoute(
                widget: GeneralSettingScreen(),
                settings: settings,
              )
            : CupertinoPageRoute(builder: (context) => GeneralSettingScreen());

      // case Routes.screenView:
      //   Map<String, dynamic> data = settings.arguments as Map<String, dynamic>;
      //   return Platform.isAndroid
      //       ? _FadedTransitionRoute(
      //         widget: ScreenView(widget: data["widget"]),
      //         settings: settings,
      //       )
      //       : CupertinoPageRoute(
      //         builder: (context) => ScreenView(widget: data["widget"]),
      //       );

      default:
        return null;
    }
  }
}

class _FadedTransitionRoute extends PageRouteBuilder {
  final Widget widget;
  @override
  final RouteSettings settings;

  _FadedTransitionRoute({required this.widget, required this.settings})
    : super(
        settings: settings,
        reverseTransitionDuration: const Duration(milliseconds: 1),
        pageBuilder:
            (
              BuildContext context,
              Animation<double> animation,
              Animation<double> secondaryAnimation,
            ) {
              return widget;
            },
        transitionDuration: const Duration(milliseconds: 1),
        transitionsBuilder:
            (
              BuildContext context,
              Animation<double> animation,
              Animation<double> secondaryAnimation,
              Widget child,
            ) {
              return FadeTransition(
                opacity: CurvedAnimation(parent: animation, curve: Curves.ease),
                child: child,
              );
            },
      );
}

class ScreenTitle extends StatelessWidget {
  final Widget widget;

  const ScreenTitle({super.key, required this.widget});

  @override
  Widget build(BuildContext context) {
    return TweenAnimationBuilder(
      tween: Tween<double>(begin: .5, end: 1),
      duration: const Duration(milliseconds: 500),
      curve: Curves.bounceIn,
      builder: (context, value, child) {
        return Opacity(opacity: value, child: child);
      },
      child: widget,
    );
  }
}
