// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'controller_password_view_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$ControllerPasswordViewStore on ControllerPasswordViewStoreBase, Store {
  late final _$isNotVisblePasswordAtom = Atom(
      name: 'ControllerPasswordViewStoreBase.isNotVisblePassword',
      context: context);

  @override
  bool get isNotVisblePassword {
    _$isNotVisblePasswordAtom.reportRead();
    return super.isNotVisblePassword;
  }

  @override
  set isNotVisblePassword(bool value) {
    _$isNotVisblePasswordAtom.reportWrite(value, super.isNotVisblePassword, () {
      super.isNotVisblePassword = value;
    });
  }

  late final _$ControllerPasswordViewStoreBaseActionController =
      ActionController(
          name: 'ControllerPasswordViewStoreBase', context: context);

  @override
  void changeVisblePassword() {
    final _$actionInfo =
        _$ControllerPasswordViewStoreBaseActionController.startAction(
            name: 'ControllerPasswordViewStoreBase.changeVisblePassword');
    try {
      return super.changeVisblePassword();
    } finally {
      _$ControllerPasswordViewStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
isNotVisblePassword: ${isNotVisblePassword}
    ''';
  }
}
