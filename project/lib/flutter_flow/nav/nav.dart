import 'dart:async';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '/auth/base_auth_user_provider.dart';

import '/main.dart';
import '/flutter_flow/flutter_flow_util.dart';

import '/index.dart';

export 'package:go_router/go_router.dart';
export 'serialization_util.dart';

const kTransitionInfoKey = '__transition_info__';

GlobalKey<NavigatorState> appNavigatorKey = GlobalKey<NavigatorState>();

class AppStateNotifier extends ChangeNotifier {
  AppStateNotifier._();

  static AppStateNotifier? _instance;
  static AppStateNotifier get instance => _instance ??= AppStateNotifier._();

  BaseAuthUser? initialUser;
  BaseAuthUser? user;
  bool showSplashImage = true;
  String? _redirectLocation;

  /// Determines whether the app will refresh and build again when a sign
  /// in or sign out happens. This is useful when the app is launched or
  /// on an unexpected logout. However, this must be turned off when we
  /// intend to sign in/out and then navigate or perform any actions after.
  /// Otherwise, this will trigger a refresh and interrupt the action(s).
  bool notifyOnAuthChange = true;

  bool get loading => user == null || showSplashImage;
  bool get loggedIn => user?.loggedIn ?? false;
  bool get initiallyLoggedIn => initialUser?.loggedIn ?? false;
  bool get shouldRedirect => loggedIn && _redirectLocation != null;

  String getRedirectLocation() => _redirectLocation!;
  bool hasRedirect() => _redirectLocation != null;
  void setRedirectLocationIfUnset(String loc) => _redirectLocation ??= loc;
  void clearRedirectLocation() => _redirectLocation = null;

  /// Mark as not needing to notify on a sign in / out when we intend
  /// to perform subsequent actions (such as navigation) afterwards.
  void updateNotifyOnAuthChange(bool notify) => notifyOnAuthChange = notify;

  void update(BaseAuthUser newUser) {
    final shouldUpdate =
        user?.uid == null || newUser.uid == null || user?.uid != newUser.uid;
    initialUser ??= newUser;
    user = newUser;
    // Refresh the app on auth change unless explicitly marked otherwise.
    // No need to update unless the user has changed.
    if (notifyOnAuthChange && shouldUpdate) {
      notifyListeners();
    }
    // Once again mark the notifier as needing to update on auth change
    // (in order to catch sign in / out events).
    updateNotifyOnAuthChange(true);
  }

  void stopShowingSplashImage() {
    showSplashImage = false;
    notifyListeners();
  }
}

GoRouter createRouter(AppStateNotifier appStateNotifier) => GoRouter(
      initialLocation: '/',
      debugLogDiagnostics: true,
      refreshListenable: appStateNotifier,
      navigatorKey: appNavigatorKey,
      errorBuilder: (context, state) =>
          appStateNotifier.loggedIn ? NavBarPage() : LoginPageWidget(),
      routes: [
        FFRoute(
          name: '_initialize',
          path: '/',
          builder: (context, _) =>
              appStateNotifier.loggedIn ? NavBarPage() : LoginPageWidget(),
        ),
        FFRoute(
          name: LoginPageWidget.routeName,
          path: LoginPageWidget.routePath,
          builder: (context, params) => LoginPageWidget(),
        ),
        FFRoute(
          name: RegistrationWidget.routeName,
          path: RegistrationWidget.routePath,
          builder: (context, params) => RegistrationWidget(),
        ),
        FFRoute(
          name: HomepageWidget.routeName,
          path: HomepageWidget.routePath,
          builder: (context, params) => params.isEmpty
              ? NavBarPage(initialPage: 'Homepage')
              : HomepageWidget(),
        ),
        FFRoute(
          name: ProfileWidget.routeName,
          path: ProfileWidget.routePath,
          builder: (context, params) => params.isEmpty
              ? NavBarPage(initialPage: 'profile')
              : ProfileWidget(),
        ),
        FFRoute(
          name: NotificationWidget.routeName,
          path: NotificationWidget.routePath,
          builder: (context, params) => params.isEmpty
              ? NavBarPage(initialPage: 'notification')
              : NotificationWidget(),
        ),
        FFRoute(
          name: ContactWidget.routeName,
          path: ContactWidget.routePath,
          builder: (context, params) => params.isEmpty
              ? NavBarPage(initialPage: 'contact')
              : ContactWidget(),
        ),
        FFRoute(
          name: DoctorWidget.routeName,
          path: DoctorWidget.routePath,
          builder: (context, params) => DoctorWidget(),
        ),
        FFRoute(
          name: ResendemailWidget.routeName,
          path: ResendemailWidget.routePath,
          builder: (context, params) => ResendemailWidget(),
        ),
        FFRoute(
          name: SentemailWidget.routeName,
          path: SentemailWidget.routePath,
          builder: (context, params) => SentemailWidget(),
        ),
        FFRoute(
          name: ResetPassWidget.routeName,
          path: ResetPassWidget.routePath,
          builder: (context, params) => ResetPassWidget(),
        ),
        FFRoute(
          name: DeleteAccountWidget.routeName,
          path: DeleteAccountWidget.routePath,
          builder: (context, params) => DeleteAccountWidget(),
        ),
        FFRoute(
          name: EditProfileWidget.routeName,
          path: EditProfileWidget.routePath,
          builder: (context, params) => EditProfileWidget(),
        ),
        FFRoute(
          name: BethaRogWidget.routeName,
          path: BethaRogWidget.routePath,
          builder: (context, params) => BethaRogWidget(),
        ),
        FFRoute(
          name: AzmaWidget.routeName,
          path: AzmaWidget.routePath,
          builder: (context, params) => AzmaWidget(),
        ),
        FFRoute(
          name: ArthopedicWidget.routeName,
          path: ArthopedicWidget.routePath,
          builder: (context, params) => ArthopedicWidget(),
        ),
        FFRoute(
          name: BloodRogWidget.routeName,
          path: BloodRogWidget.routePath,
          builder: (context, params) => BloodRogWidget(),
        ),
        FFRoute(
          name: BurnPlasticWidget.routeName,
          path: BurnPlasticWidget.routePath,
          builder: (context, params) => BurnPlasticWidget(),
        ),
        FFRoute(
          name: CancerRogWidget.routeName,
          path: CancerRogWidget.routePath,
          builder: (context, params) => CancerRogWidget(),
        ),
        FFRoute(
          name: DentistWidget.routeName,
          path: DentistWidget.routePath,
          builder: (context, params) => DentistWidget(),
        ),
        FFRoute(
          name: DiabetisHormonWidget.routeName,
          path: DiabetisHormonWidget.routePath,
          builder: (context, params) => DiabetisHormonWidget(),
        ),
        FFRoute(
          name: EyeRogWidget.routeName,
          path: EyeRogWidget.routePath,
          builder: (context, params) => EyeRogWidget(),
        ),
        FFRoute(
          name: HeartRogWidget.routeName,
          path: HeartRogWidget.routePath,
          builder: (context, params) => HeartRogWidget(),
        ),
        FFRoute(
          name: HerbalWidget.routeName,
          path: HerbalWidget.routePath,
          builder: (context, params) => HerbalWidget(),
        ),
        FFRoute(
          name: HomeopathicWidget.routeName,
          path: HomeopathicWidget.routePath,
          builder: (context, params) => HomeopathicWidget(),
        ),
        FFRoute(
          name: KidnyRogWidget.routeName,
          path: KidnyRogWidget.routePath,
          builder: (context, params) => KidnyRogWidget(),
        ),
        FFRoute(
          name: LeasersurgeryWidget.routeName,
          path: LeasersurgeryWidget.routePath,
          builder: (context, params) => LeasersurgeryWidget(),
        ),
        FFRoute(
          name: LeverWidget.routeName,
          path: LeverWidget.routePath,
          builder: (context, params) => LeverWidget(),
        ),
        FFRoute(
          name: MedicineWidget.routeName,
          path: MedicineWidget.routePath,
          builder: (context, params) => MedicineWidget(),
        ),
        FFRoute(
          name: MonoRogWidget.routeName,
          path: MonoRogWidget.routePath,
          builder: (context, params) => MonoRogWidget(),
        ),
        FFRoute(
          name: NakkangolaWidget.routeName,
          path: NakkangolaWidget.routePath,
          builder: (context, params) => NakkangolaWidget(),
        ),
        FFRoute(
          name: NeurosurgeryWidget.routeName,
          path: NeurosurgeryWidget.routePath,
          builder: (context, params) => NeurosurgeryWidget(),
        ),
        FFRoute(
          name: PailsWidget.routeName,
          path: PailsWidget.routePath,
          builder: (context, params) => PailsWidget(),
        ),
        FFRoute(
          name: PhysicalmedicineWidget.routeName,
          path: PhysicalmedicineWidget.routePath,
          builder: (context, params) => PhysicalmedicineWidget(),
        ),
        FFRoute(
          name: PhysiotherapistWidget.routeName,
          path: PhysiotherapistWidget.routePath,
          builder: (context, params) => PhysiotherapistWidget(),
        ),
        FFRoute(
          name: PlasticsurgeryWidget.routeName,
          path: PlasticsurgeryWidget.routePath,
          builder: (context, params) => PlasticsurgeryWidget(),
        ),
        FFRoute(
          name: PustiRogWidget.routeName,
          path: PustiRogWidget.routePath,
          builder: (context, params) => PustiRogWidget(),
        ),
        FFRoute(
          name: SurgeryWidget.routeName,
          path: SurgeryWidget.routePath,
          builder: (context, params) => SurgeryWidget(),
        ),
        FFRoute(
          name: SisuRogWidget.routeName,
          path: SisuRogWidget.routePath,
          builder: (context, params) => SisuRogWidget(),
        ),
        FFRoute(
          name: SkinSexWidget.routeName,
          path: SkinSexWidget.routePath,
          builder: (context, params) => SkinSexWidget(),
        ),
        FFRoute(
          name: SnayurogWidget.routeName,
          path: SnayurogWidget.routePath,
          builder: (context, params) => SnayurogWidget(),
        ),
        FFRoute(
          name: UrologyWidget.routeName,
          path: UrologyWidget.routePath,
          builder: (context, params) => UrologyWidget(),
        ),
        FFRoute(
          name: GainirogWidget.routeName,
          path: GainirogWidget.routePath,
          builder: (context, params) => GainirogWidget(),
        ),
        FFRoute(
          name: HospitalWidget.routeName,
          path: HospitalWidget.routePath,
          builder: (context, params) => HospitalWidget(),
        ),
        FFRoute(
          name: DiagnosticWidget.routeName,
          path: DiagnosticWidget.routePath,
          builder: (context, params) => DiagnosticWidget(),
        ),
        FFRoute(
          name: BloodgroupWidget.routeName,
          path: BloodgroupWidget.routePath,
          builder: (context, params) => BloodgroupWidget(),
        ),
        FFRoute(
          name: BusWidget.routeName,
          path: BusWidget.routePath,
          builder: (context, params) => BusWidget(),
        ),
        FFRoute(
          name: BrtcWidget.routeName,
          path: BrtcWidget.routePath,
          builder: (context, params) => BrtcWidget(),
        ),
        FFRoute(
          name: Train2Widget.routeName,
          path: Train2Widget.routePath,
          builder: (context, params) => Train2Widget(),
        ),
        FFRoute(
          name: PlaneWidget.routeName,
          path: PlaneWidget.routePath,
          builder: (context, params) => PlaneWidget(),
        ),
        FFRoute(
          name: CarRentWidget.routeName,
          path: CarRentWidget.routePath,
          builder: (context, params) => CarRentWidget(),
        ),
        FFRoute(
          name: EmergencyServcWidget.routeName,
          path: EmergencyServcWidget.routePath,
          builder: (context, params) => EmergencyServcWidget(),
        ),
        FFRoute(
          name: PoliceWidget.routeName,
          path: PoliceWidget.routePath,
          builder: (context, params) => PoliceWidget(),
        ),
        FFRoute(
          name: HotelWidget.routeName,
          path: HotelWidget.routePath,
          builder: (context, params) => HotelWidget(),
        ),
        FFRoute(
          name: BuysellWidget.routeName,
          path: BuysellWidget.routePath,
          builder: (context, params) => BuysellWidget(),
        ),
        FFRoute(
          name: ResturentWidget.routeName,
          path: ResturentWidget.routePath,
          builder: (context, params) => ResturentWidget(),
        ),
        FFRoute(
          name: EducationWidget.routeName,
          path: EducationWidget.routePath,
          builder: (context, params) => EducationWidget(),
        ),
        FFRoute(
          name: PrivetWidget.routeName,
          path: PrivetWidget.routePath,
          builder: (context, params) => PrivetWidget(),
        ),
        FFRoute(
          name: BanglaWidget.routeName,
          path: BanglaWidget.routePath,
          builder: (context, params) => BanglaWidget(),
        ),
        FFRoute(
          name: EnglishWidget.routeName,
          path: EnglishWidget.routePath,
          builder: (context, params) => EnglishWidget(),
        ),
        FFRoute(
          name: MathWidget.routeName,
          path: MathWidget.routePath,
          builder: (context, params) => MathWidget(),
        ),
        FFRoute(
          name: PhysicsWidget.routeName,
          path: PhysicsWidget.routePath,
          builder: (context, params) => PhysicsWidget(),
        ),
        FFRoute(
          name: ChemistryWidget.routeName,
          path: ChemistryWidget.routePath,
          builder: (context, params) => ChemistryWidget(),
        ),
        FFRoute(
          name: BiologyWidget.routeName,
          path: BiologyWidget.routePath,
          builder: (context, params) => BiologyWidget(),
        ),
        FFRoute(
          name: AccountingWidget.routeName,
          path: AccountingWidget.routePath,
          builder: (context, params) => AccountingWidget(),
        ),
        FFRoute(
          name: FinanceWidget.routeName,
          path: FinanceWidget.routePath,
          builder: (context, params) => FinanceWidget(),
        ),
        FFRoute(
          name: IctWidget.routeName,
          path: IctWidget.routePath,
          builder: (context, params) => IctWidget(),
        ),
        FFRoute(
          name: IeltsWidget.routeName,
          path: IeltsWidget.routePath,
          builder: (context, params) => IeltsWidget(),
        ),
        FFRoute(
          name: DrawingWidget.routeName,
          path: DrawingWidget.routePath,
          builder: (context, params) => DrawingWidget(),
        ),
        FFRoute(
          name: DanceWidget.routeName,
          path: DanceWidget.routePath,
          builder: (context, params) => DanceWidget(),
        ),
        FFRoute(
          name: SingWidget.routeName,
          path: SingWidget.routePath,
          builder: (context, params) => SingWidget(),
        ),
        FFRoute(
          name: ComputerWidget.routeName,
          path: ComputerWidget.routePath,
          builder: (context, params) => ComputerWidget(),
        ),
        FFRoute(
          name: DrivingWidget.routeName,
          path: DrivingWidget.routePath,
          builder: (context, params) => DrivingWidget(),
        ),
        FFRoute(
          name: HomeTutorWidget.routeName,
          path: HomeTutorWidget.routePath,
          builder: (context, params) => HomeTutorWidget(),
        ),
        FFRoute(
          name: BasaVaraWidget.routeName,
          path: BasaVaraWidget.routePath,
          builder: (context, params) => BasaVaraWidget(),
        ),
        FFRoute(
          name: ElectricityWidget.routeName,
          path: ElectricityWidget.routePath,
          builder: (context, params) => ElectricityWidget(),
        ),
        FFRoute(
          name: BankWidget.routeName,
          path: BankWidget.routePath,
          builder: (context, params) => BankWidget(),
        ),
        FFRoute(
          name: AtmWidget.routeName,
          path: AtmWidget.routePath,
          builder: (context, params) => AtmWidget(),
        ),
        FFRoute(
          name: EduBoardWidget.routeName,
          path: EduBoardWidget.routePath,
          builder: (context, params) => EduBoardWidget(),
        ),
        FFRoute(
          name: ParlerWidget.routeName,
          path: ParlerWidget.routePath,
          builder: (context, params) => ParlerWidget(),
        ),
        FFRoute(
          name: MistriWidget.routeName,
          path: MistriWidget.routePath,
          builder: (context, params) => MistriWidget(),
        ),
        FFRoute(
          name: NarseyWidget.routeName,
          path: NarseyWidget.routePath,
          builder: (context, params) => NarseyWidget(),
        ),
        FFRoute(
          name: CuriaWidget.routeName,
          path: CuriaWidget.routePath,
          builder: (context, params) => CuriaWidget(),
        ),
        FFRoute(
          name: JobWidget.routeName,
          path: JobWidget.routePath,
          builder: (context, params) => JobWidget(),
        ),
        FFRoute(
          name: UddoktaWidget.routeName,
          path: UddoktaWidget.routePath,
          builder: (context, params) => UddoktaWidget(),
        ),
        FFRoute(
          name: RajCommunityWidget.routeName,
          path: RajCommunityWidget.routePath,
          builder: (context, params) => RajCommunityWidget(),
        ),
        FFRoute(
          name: AboutDevelopWidget.routeName,
          path: AboutDevelopWidget.routePath,
          builder: (context, params) => AboutDevelopWidget(),
        ),
        FFRoute(
          name: ProthomPataWidget.routeName,
          path: ProthomPataWidget.routePath,
          builder: (context, params) => ProthomPataWidget(),
        ),
        FFRoute(
          name: RajTrbnWidget.routeName,
          path: RajTrbnWidget.routePath,
          builder: (context, params) => RajTrbnWidget(),
        ),
        FFRoute(
          name: SilckCtyWidget.routeName,
          path: SilckCtyWidget.routePath,
          builder: (context, params) => SilckCtyWidget(),
        ),
        FFRoute(
          name: Pdmatms24Widget.routeName,
          path: Pdmatms24Widget.routePath,
          builder: (context, params) => Pdmatms24Widget(),
        ),
        FFRoute(
          name: AmdrRajWidget.routeName,
          path: AmdrRajWidget.routePath,
          builder: (context, params) => AmdrRajWidget(),
        ),
        FFRoute(
          name: SansneWidget.routeName,
          path: SansneWidget.routePath,
          builder: (context, params) => SansneWidget(),
        ),
        FFRoute(
          name: SonalisngWidget.routeName,
          path: SonalisngWidget.routePath,
          builder: (context, params) => SonalisngWidget(),
        ),
        FFRoute(
          name: ZzzzzzzWidget.routeName,
          path: ZzzzzzzWidget.routePath,
          builder: (context, params) => ZzzzzzzWidget(),
        ),
        FFRoute(
          name: BusDhakaWidget.routeName,
          path: BusDhakaWidget.routePath,
          builder: (context, params) => BusDhakaWidget(),
        ),
        FFRoute(
          name: PrivacyPolicyWidget.routeName,
          path: PrivacyPolicyWidget.routePath,
          builder: (context, params) => PrivacyPolicyWidget(),
        ),
        FFRoute(
          name: FiresTationWidget.routeName,
          path: FiresTationWidget.routePath,
          builder: (context, params) => FiresTationWidget(),
        ),
        FFRoute(
          name: PaperRajWidget.routeName,
          path: PaperRajWidget.routePath,
          builder: (context, params) => PaperRajWidget(),
        ),
        FFRoute(
          name: UttoraProtidinWidget.routeName,
          path: UttoraProtidinWidget.routePath,
          builder: (context, params) => UttoraProtidinWidget(),
        ),
        FFRoute(
          name: BngAiWidget.routeName,
          path: BngAiWidget.routePath,
          builder: (context, params) => BngAiWidget(),
        ),
        FFRoute(
          name: TrainTCKTWidget.routeName,
          path: TrainTCKTWidget.routePath,
          builder: (context, params) => TrainTCKTWidget(),
        ),
        FFRoute(
          name: BusTCKTWidget.routeName,
          path: BusTCKTWidget.routePath,
          builder: (context, params) => BusTCKTWidget(),
        ),
        FFRoute(
          name: PlaneTICKTWidget.routeName,
          path: PlaneTICKTWidget.routePath,
          builder: (context, params) => PlaneTICKTWidget(),
        ),
        FFRoute(
          name: BoardResultWidget.routeName,
          path: BoardResultWidget.routePath,
          builder: (context, params) => BoardResultWidget(),
        )
      ].map((r) => r.toRoute(appStateNotifier)).toList(),
    );

extension NavParamExtensions on Map<String, String?> {
  Map<String, String> get withoutNulls => Map.fromEntries(
        entries
            .where((e) => e.value != null)
            .map((e) => MapEntry(e.key, e.value!)),
      );
}

extension NavigationExtensions on BuildContext {
  void goNamedAuth(
    String name,
    bool mounted, {
    Map<String, String> pathParameters = const <String, String>{},
    Map<String, String> queryParameters = const <String, String>{},
    Object? extra,
    bool ignoreRedirect = false,
  }) =>
      !mounted || GoRouter.of(this).shouldRedirect(ignoreRedirect)
          ? null
          : goNamed(
              name,
              pathParameters: pathParameters,
              queryParameters: queryParameters,
              extra: extra,
            );

  void pushNamedAuth(
    String name,
    bool mounted, {
    Map<String, String> pathParameters = const <String, String>{},
    Map<String, String> queryParameters = const <String, String>{},
    Object? extra,
    bool ignoreRedirect = false,
  }) =>
      !mounted || GoRouter.of(this).shouldRedirect(ignoreRedirect)
          ? null
          : pushNamed(
              name,
              pathParameters: pathParameters,
              queryParameters: queryParameters,
              extra: extra,
            );

  void safePop() {
    // If there is only one route on the stack, navigate to the initial
    // page instead of popping.
    if (canPop()) {
      pop();
    } else {
      go('/');
    }
  }
}

extension GoRouterExtensions on GoRouter {
  AppStateNotifier get appState => AppStateNotifier.instance;
  void prepareAuthEvent([bool ignoreRedirect = false]) =>
      appState.hasRedirect() && !ignoreRedirect
          ? null
          : appState.updateNotifyOnAuthChange(false);
  bool shouldRedirect(bool ignoreRedirect) =>
      !ignoreRedirect && appState.hasRedirect();
  void clearRedirectLocation() => appState.clearRedirectLocation();
  void setRedirectLocationIfUnset(String location) =>
      appState.updateNotifyOnAuthChange(false);
}

extension _GoRouterStateExtensions on GoRouterState {
  Map<String, dynamic> get extraMap =>
      extra != null ? extra as Map<String, dynamic> : {};
  Map<String, dynamic> get allParams => <String, dynamic>{}
    ..addAll(pathParameters)
    ..addAll(uri.queryParameters)
    ..addAll(extraMap);
  TransitionInfo get transitionInfo => extraMap.containsKey(kTransitionInfoKey)
      ? extraMap[kTransitionInfoKey] as TransitionInfo
      : TransitionInfo.appDefault();
}

class FFParameters {
  FFParameters(this.state, [this.asyncParams = const {}]);

  final GoRouterState state;
  final Map<String, Future<dynamic> Function(String)> asyncParams;

  Map<String, dynamic> futureParamValues = {};

  // Parameters are empty if the params map is empty or if the only parameter
  // present is the special extra parameter reserved for the transition info.
  bool get isEmpty =>
      state.allParams.isEmpty ||
      (state.allParams.length == 1 &&
          state.extraMap.containsKey(kTransitionInfoKey));
  bool isAsyncParam(MapEntry<String, dynamic> param) =>
      asyncParams.containsKey(param.key) && param.value is String;
  bool get hasFutures => state.allParams.entries.any(isAsyncParam);
  Future<bool> completeFutures() => Future.wait(
        state.allParams.entries.where(isAsyncParam).map(
          (param) async {
            final doc = await asyncParams[param.key]!(param.value)
                .onError((_, __) => null);
            if (doc != null) {
              futureParamValues[param.key] = doc;
              return true;
            }
            return false;
          },
        ),
      ).onError((_, __) => [false]).then((v) => v.every((e) => e));

  dynamic getParam<T>(
    String paramName,
    ParamType type, {
    bool isList = false,
    List<String>? collectionNamePath,
  }) {
    if (futureParamValues.containsKey(paramName)) {
      return futureParamValues[paramName];
    }
    if (!state.allParams.containsKey(paramName)) {
      return null;
    }
    final param = state.allParams[paramName];
    // Got parameter from `extras`, so just directly return it.
    if (param is! String) {
      return param;
    }
    // Return serialized value.
    return deserializeParam<T>(
      param,
      type,
      isList,
      collectionNamePath: collectionNamePath,
    );
  }
}

class FFRoute {
  const FFRoute({
    required this.name,
    required this.path,
    required this.builder,
    this.requireAuth = false,
    this.asyncParams = const {},
    this.routes = const [],
  });

  final String name;
  final String path;
  final bool requireAuth;
  final Map<String, Future<dynamic> Function(String)> asyncParams;
  final Widget Function(BuildContext, FFParameters) builder;
  final List<GoRoute> routes;

  GoRoute toRoute(AppStateNotifier appStateNotifier) => GoRoute(
        name: name,
        path: path,
        redirect: (context, state) {
          if (appStateNotifier.shouldRedirect) {
            final redirectLocation = appStateNotifier.getRedirectLocation();
            appStateNotifier.clearRedirectLocation();
            return redirectLocation;
          }

          if (requireAuth && !appStateNotifier.loggedIn) {
            appStateNotifier.setRedirectLocationIfUnset(state.uri.toString());
            return '/loginPage';
          }
          return null;
        },
        pageBuilder: (context, state) {
          fixStatusBarOniOS16AndBelow(context);
          final ffParams = FFParameters(state, asyncParams);
          final page = ffParams.hasFutures
              ? FutureBuilder(
                  future: ffParams.completeFutures(),
                  builder: (context, _) => builder(context, ffParams),
                )
              : builder(context, ffParams);
          final child = appStateNotifier.loading
              ? Container(
                  color: Colors.white,
                  child: Image.asset(
                    'assets/images/InShot_20250309_212803020.gif',
                    fit: BoxFit.contain,
                  ),
                )
              : page;

          final transitionInfo = state.transitionInfo;
          return transitionInfo.hasTransition
              ? CustomTransitionPage(
                  key: state.pageKey,
                  child: child,
                  transitionDuration: transitionInfo.duration,
                  transitionsBuilder:
                      (context, animation, secondaryAnimation, child) =>
                          PageTransition(
                    type: transitionInfo.transitionType,
                    duration: transitionInfo.duration,
                    reverseDuration: transitionInfo.duration,
                    alignment: transitionInfo.alignment,
                    child: child,
                  ).buildTransitions(
                    context,
                    animation,
                    secondaryAnimation,
                    child,
                  ),
                )
              : MaterialPage(key: state.pageKey, child: child);
        },
        routes: routes,
      );
}

class TransitionInfo {
  const TransitionInfo({
    required this.hasTransition,
    this.transitionType = PageTransitionType.fade,
    this.duration = const Duration(milliseconds: 300),
    this.alignment,
  });

  final bool hasTransition;
  final PageTransitionType transitionType;
  final Duration duration;
  final Alignment? alignment;

  static TransitionInfo appDefault() => TransitionInfo(hasTransition: false);
}

class RootPageContext {
  const RootPageContext(this.isRootPage, [this.errorRoute]);
  final bool isRootPage;
  final String? errorRoute;

  static bool isInactiveRootPage(BuildContext context) {
    final rootPageContext = context.read<RootPageContext?>();
    final isRootPage = rootPageContext?.isRootPage ?? false;
    final location = GoRouterState.of(context).uri.toString();
    return isRootPage &&
        location != '/' &&
        location != rootPageContext?.errorRoute;
  }

  static Widget wrap(Widget child, {String? errorRoute}) => Provider.value(
        value: RootPageContext(true, errorRoute),
        child: child,
      );
}

extension GoRouterLocationExtension on GoRouter {
  String getCurrentLocation() {
    final RouteMatch lastMatch = routerDelegate.currentConfiguration.last;
    final RouteMatchList matchList = lastMatch is ImperativeRouteMatch
        ? lastMatch.matches
        : routerDelegate.currentConfiguration;
    return matchList.uri.toString();
  }
}
