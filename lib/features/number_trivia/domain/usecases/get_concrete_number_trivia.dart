import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_application_1/core/error/failures.dart';
import 'package:flutter_application_1/core/usecases/usecase.dart';
import 'package:flutter_application_1/features/number_trivia/domain/entities/number_trivia.dart';
import 'package:flutter_application_1/features/number_trivia/domain/repositories/number_trivia_repository.dart';
import 'package:meta/meta.dart';

class GetConcreteNumberTrivia
    implements UseCase<NumberTrivia, GetConcreteNumberTriviaParams> {
  final NumberTriviaRepository repository;

  GetConcreteNumberTrivia(this.repository);

  @override
  Future<Either<Failure, NumberTrivia>> call(
      GetConcreteNumberTriviaParams params) async {
    return await repository.getConcreteNumberTrivia(params.number);
  }
}

class GetConcreteNumberTriviaParams extends Equatable {
  final int number;

  GetConcreteNumberTriviaParams({@required this.number});

  @override
  // TODO: implement props
  List<Object> get props => throw UnimplementedError();
}
