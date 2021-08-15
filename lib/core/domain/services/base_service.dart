import 'package:dartz/dartz.dart';

import '../../failures/failures.dart';

abstract class BaseService<Output, Input> {
  Future<Either<Failure, Output>?> call(Input attr);
}

class NoInput {
  const NoInput();
}
