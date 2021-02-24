import 'package:gokullu/data/rest_data.dart';
import 'package:gokullu/models/user.dart';

abstract class SignInPageContract {
  void onLoginSuccess(User user);
  void onLoginError(String error);
}

class SignInPagePresenter {
  SignInPageContract _view;
  RestData api = new RestData();
  SignInPagePresenter(this._view);

  doLogin(String username, String password) {
    api
        .login(username, password)
        .then((user) => _view.onLoginSuccess(user))
        .catchError((onError) => _view.onLoginError(onError.toString()));
  }
}
