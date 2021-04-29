import 'package:dartz/dartz.dart';
import 'package:flutter_application_1/core/error/failures.dart';
import 'package:flutter_application_1/features/number_trivia/domain/entities/number_trivia.dart';

abstract class NumberTriviaRepository {
  Future<Either<Failure, NumberTrivia>> getConcreteNumberTrivia(int number);
  Future<Either<Failure, NumberTrivia>> getRandomNumberTrivia();
}
