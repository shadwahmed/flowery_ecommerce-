import 'package:flower_ecommerce/Features/auth/domain/entities/logout_entity.dart';
import 'package:flower_ecommerce/Features/auth/domain/repositories/auth_repo.dart';
import 'package:flower_ecommerce/Features/auth/domain/use_cases/logout_usecases.dart';
import 'package:flower_ecommerce/core/common/api_result.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'login_usecase_test.mocks.dart';

@GenerateMocks([AuthRepo])
void main() {
  late MockAuthRepo mockAuthRepo;
  late LogoutUseCases logoutUseCases;
  setUp(() {
    mockAuthRepo = MockAuthRepo();
    logoutUseCases = LogoutUseCases(mockAuthRepo);
  });
  test(
      "when call logout function it should calls logout.repo "
      "with correct parameters", () async {
    var mockedResult = Success(LogoutEntity());
    String token = 'token';
    when(mockAuthRepo.logout(token)).thenAnswer((_) async => mockedResult);

    var result = await logoutUseCases.logout(token);
    expect(result, mockedResult);
    verify(mockAuthRepo.logout(token)).called(1);
  });
}
