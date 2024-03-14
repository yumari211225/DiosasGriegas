import 'package:rxdart/rxdart.dart';

import 'custom_auth_manager.dart';

class BeautyAuthUser {
  BeautyAuthUser({required this.loggedIn, this.uid});

  bool loggedIn;
  String? uid;
}

/// Generates a stream of the authenticated user.
BehaviorSubject<BeautyAuthUser> beautyAuthUserSubject =
    BehaviorSubject.seeded(BeautyAuthUser(loggedIn: false));
Stream<BeautyAuthUser> beautyAuthUserStream() =>
    beautyAuthUserSubject.asBroadcastStream().map((user) => currentUser = user);
