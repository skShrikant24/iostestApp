import 'package:rxdart/rxdart.dart';

import 'custom_auth_manager.dart';

class TestApplicationAuthUser {
  TestApplicationAuthUser({required this.loggedIn, this.uid});

  bool loggedIn;
  String? uid;
}

/// Generates a stream of the authenticated user.
BehaviorSubject<TestApplicationAuthUser> testApplicationAuthUserSubject =
    BehaviorSubject.seeded(TestApplicationAuthUser(loggedIn: false));
Stream<TestApplicationAuthUser> testApplicationAuthUserStream() =>
    testApplicationAuthUserSubject
        .asBroadcastStream()
        .map((user) => currentUser = user);
