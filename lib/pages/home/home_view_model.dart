import 'package:stacked/stacked.dart';
import 'package:stacked_app_tutorial/app/app.router.dart';
import 'package:stacked_app_tutorial/app/app.locator.dart';
import 'package:stacked_services/stacked_services.dart';

class HomePageModel extends BaseViewModel {
  final String _title = 'Home View';
  String get title => '$_title Counter: $counter';
  final _navigationService = locator<NavigationService>();

  int _counter = 0;
  int get counter => _counter;

  void incrementCounter() {
    _counter++;
    notifyListeners();
  }

  void incrementCounter2() {
    _counter += 2;
    notifyListeners();
  }

  void multiplyCounter() {
    _counter = _counter * 2;
    notifyListeners();
  }

  void goBack() {
    _navigationService.navigateTo(Routes.startUpPage);
  }

  void resetCounter() {
    _counter = 0;
    notifyListeners();
  }
}
