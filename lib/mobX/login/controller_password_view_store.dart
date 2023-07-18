import 'package:mobx/mobx.dart';
part 'controller_password_view_store.g.dart';

class ControllerPasswordViewStore = ControllerPasswordViewStoreBase with _$ControllerPasswordViewStore;

abstract class ControllerPasswordViewStoreBase with Store {


  @observable
  bool isNotVisblePassword = true;

  @action
  void changeVisblePassword() => isNotVisblePassword = !isNotVisblePassword;  
}