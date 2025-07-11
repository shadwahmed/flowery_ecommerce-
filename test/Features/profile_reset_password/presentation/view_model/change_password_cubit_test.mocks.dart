// Mocks generated by Mockito 5.4.4 from annotations
// in flower_ecommerce/test/Features/profile_reset_password/presentation/view_model/change_password_cubit_test.dart.
// Do not manually edit this file.

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:async' as _i5;

import 'package:flower_ecommerce/core/common/api_result.dart' as _i3;
import 'package:flower_ecommerce/Features/profile_reset_password/domain/entities/change_password_entity.dart'
    as _i6;
import 'package:flower_ecommerce/Features/profile_reset_password/domain/repositories/change_password_repository.dart'
    as _i2;
import 'package:flower_ecommerce/Features/profile_reset_password/domain/use_case/change_password_use_case.dart'
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

class _FakeChangePasswordRepository_0 extends _i1.SmartFake
    implements _i2.ChangePasswordRepository {
  _FakeChangePasswordRepository_0(
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

/// A class which mocks [ChangePasswordUseCase].
///
/// See the documentation for Mockito's code generation for more information.
class MockChangePasswordUseCase extends _i1.Mock
    implements _i4.ChangePasswordUseCase {
  MockChangePasswordUseCase() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i2.ChangePasswordRepository get changePasswordRepository =>
      (super.noSuchMethod(
        Invocation.getter(#changePasswordRepository),
        returnValue: _FakeChangePasswordRepository_0(
          this,
          Invocation.getter(#changePasswordRepository),
        ),
      ) as _i2.ChangePasswordRepository);

  @override
  set changePasswordRepository(
          _i2.ChangePasswordRepository? _changePasswordRepository) =>
      super.noSuchMethod(
        Invocation.setter(
          #changePasswordRepository,
          _changePasswordRepository,
        ),
        returnValueForMissingStub: null,
      );

  @override
  _i5.Future<_i3.Result<_i6.ChangePasswordEntity?>> invoke(
    String? oldPassword,
    String? newPassword,
    String? rePassword,
    String? token,
  ) =>
      (super.noSuchMethod(
        Invocation.method(
          #invoke,
          [
            oldPassword,
            newPassword,
            rePassword,
            token,
          ],
        ),
        returnValue: _i5.Future<_i3.Result<_i6.ChangePasswordEntity?>>.value(
            _FakeResult_1<_i6.ChangePasswordEntity?>(
          this,
          Invocation.method(
            #invoke,
            [
              oldPassword,
              newPassword,
              rePassword,
              token,
            ],
          ),
        )),
      ) as _i5.Future<_i3.Result<_i6.ChangePasswordEntity?>>);
}
