import 'package:flower_ecommerce/Features/auth/data/data_sources/auth_online_datasource.dart';
import 'package:flower_ecommerce/Features/auth/data/repositories/auth_repo_impl.dart';
import 'package:flower_ecommerce/Features/auth/domain/entities/logout_entity.dart';
import 'package:flower_ecommerce/core/common/api_result.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'logout_repo_impl_test.mocks.dart';

@GenerateMocks([AuthOnLineDataSource])
void main() {
  late MockAuthOnLineDataSource mockAuthOnLineDataSource;
  late AuthRepoImpl authRepo;

  setUp(() {
    mockAuthOnLineDataSource = MockAuthOnLineDataSource();
    authRepo = AuthRepoImpl(mockAuthOnLineDataSource);
  });

  test(
      'when i call logout function it should call online datasource with'
      ' correct parameters', () async {
    String token = 'token';
    var mockedResult = Success(LogoutEntity());

    when(mockAuthOnLineDataSource.logout(token))
        .thenAnswer((_) async => mockedResult);

    var result = await authRepo.logout(token);
    expect(result, mockedResult);
    verify(mockAuthOnLineDataSource.logout(token)).called(1);
  });
}
