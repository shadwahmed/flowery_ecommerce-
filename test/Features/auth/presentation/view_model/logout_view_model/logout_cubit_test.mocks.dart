// Mocks generated by Mockito 5.4.4 from annotations
// in flower_ecommerce/test/Features/auth/presentation/view_model/logout_view_model/logout_cubit_test.dart.
// Do not manually edit this file.

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:async' as _i5;

import 'package:flower_ecommerce/core/common/api_result.dart' as _i3;
import 'package:flower_ecommerce/Features/auth/domain/entities/logout_entity.dart'
    as _i6;
import 'package:flower_ecommerce/Features/auth/domain/repositories/auth_repo.dart'
    as _i2;
import 'package:flower_ecommerce/Features/auth/domain/use_cases/logout_usecases.dart'
    as _i4;
import 'package:mockito/mockito.dart' as _i1;

// ignore_for_file: type=lint
// ignore_for_file: avoid_redundant_argument_values
// ignore_for_file: avoid_setters_without_getters
// ignore_for_file: comment_references
// ignore_for_file: deprecated_member_use
// ignore_for_file: deprecated_member_use_from_same_package
// ignore_for_file: implementation_imports
// ignore_for_file: invalid_use_of_visible_for_testing_member
// ignore_for_file: prefer_const_constructors
// ignore_for_file: unnecessary_parenthesis
// ignore_for_file: camel_case_types
// ignore_for_file: subtype_of_sealed_class

class _FakeAuthRepo_0 extends _i1.SmartFake implements _i2.AuthRepo {
  _FakeAuthRepo_0(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

class _FakeResult_1<T> extends _i1.SmartFake implements _i3.Result<T> {
  _FakeResult_1(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

/// A class which mocks [LogoutUseCases].
///
/// See the documentation for Mockito's code generation for more information.
class MockLogoutUseCases extends _i1.Mock implements _i4.LogoutUseCases {
  MockLogoutUseCases() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i2.AuthRepo get authRepo => (super.noSuchMethod(
        Invocation.getter(#authRepo),
        returnValue: _FakeAuthRepo_0(
          this,
          Invocation.getter(#authRepo),
        ),
      ) as _i2.AuthRepo);

  @override
  set authRepo(_i2.AuthRepo? _authRepo) => super.noSuchMethod(
        Invocation.setter(
          #authRepo,
          _authRepo,
        ),
        returnValueForMissingStub: null,
      );

  @override
  _i5.Future<_i3.Result<_i6.LogoutEntity>> logout(String? token) =>
      (super.noSuchMethod(
        Invocation.method(
          #logout,
          [token],
        ),
        returnValue: _i5.Future<_i3.Result<_i6.LogoutEntity>>.value(
            _FakeResult_1<_i6.LogoutEntity>(
          this,
          Invocation.method(
            #logout,
            [token],
          ),
        )),
      ) as _i5.Future<_i3.Result<_i6.LogoutEntity>>);
}
