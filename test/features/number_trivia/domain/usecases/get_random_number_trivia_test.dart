import 'package:dartz/dartz.dart';
import 'package:flutter_application_1/features/number_trivia/domain/entities/number_trivia.dart';
import 'package:flutter_application_1/features/number_trivia/domain/repositories/number_trivia_repository.dart';
import 'package:flutter_application_1/features/number_trivia/domain/usecases/get_random_number_trivia.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

class MockNumberTrivivaRepository extends Mock
    implements NumberTriviaRepository {}

void main() {
  GetRandomNumberTrivia usecase;
  MockNumberTrivivaRepository mockNumberTrivivaRepository;

  setUp(() {
    mockNumberTrivivaRepository = MockNumberTrivivaRepository();
    usecase = GetRandomNumberTrivia(mockNumberTrivivaRepository);
  });

  final tNumberTrivia = NumberTrivia(text: "valami", number: 2);

  test('should get random trivia from repository', () async {
    //arrange
    when(mockNumberTrivivaRepository.getRandomNumberTrivia())
        .thenAnswer((realInvocation) async => Right(tNumberTrivia));

    //act
    final result = await usecase();

    expect(result, Right(tNumberTrivia));
    verify(mockNumberTrivivaRepository.getRandomNumberTrivia());
    verifyNoMoreInteractions(mockNumberTrivivaRepository);
  });
}
