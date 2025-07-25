// Mocks generated by Mockito 5.4.4 from annotations
// in flower_ecommerce/test/Features/edit_profile/presentation/viewmodels/editprofile_cubit_test.dart.
// Do not manually edit this file.

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:async' as _i5;

import 'package:flower_ecommerce/core/common/api_result.dart' as _i3;
import 'package:flower_ecommerce/Features/edit_profile/domain/entities/edit_profile_entity.dart'
    as _i6;
import 'package:flower_ecommerce/Features/edit_profile/domain/repo/edit_profile_repo.dart'
    as _i2;
import 'package:flower_ecommerce/Features/edit_profile/domain/use_cases/edit_profile_use_case.dart'
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

class _FakeEditProfileRepo_0 extends _i1.SmartFake
    implements _i2.EditProfileRepo {
  _FakeEditProfileRepo_0(
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

/// A class which mocks [EditProfileUseCase].
///
/// See the documentation for Mockito's code generation for more information.
class MockEditProfileUseCase extends _i1.Mock
    implements _i4.EditProfileUseCase {
  MockEditProfileUseCase() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i2.EditProfileRepo get editProfileRepo => (super.noSuchMethod(
        Invocation.getter(#editProfileRepo),
        returnValue: _FakeEditProfileRepo_0(
          this,
          Invocation.getter(#editProfileRepo),
        ),
      ) as _i2.EditProfileRepo);

  @override
  set editProfileRepo(_i2.EditProfileRepo? _editProfileRepo) =>
      super.noSuchMethod(
        Invocation.setter(
          #editProfileRepo,
          _editProfileRepo,
        ),
        returnValueForMissingStub: null,
      );

  @override
  _i5.Future<_i3.Result<_i6.EditProfileEntity>> editProfile(
    String? token,
    String? firstName,
    String? lastName,
    String? email,
    String? phone,
  ) =>
      (super.noSuchMethod(
        Invocation.method(
          #editProfile,
          [
            token,
            firstName,
            lastName,
            email,
            phone,
          ],
        ),
        returnValue: _i5.Future<_i3.Result<_i6.EditProfileEntity>>.value(
            _FakeResult_1<_i6.EditProfileEntity>(
          this,
          Invocation.method(
            #editProfile,
            [
              token,
              firstName,
              lastName,
              email,
              phone,
            ],
          ),
        )),
      ) as _i5.Future<_i3.Result<_i6.EditProfileEntity>>);
}
