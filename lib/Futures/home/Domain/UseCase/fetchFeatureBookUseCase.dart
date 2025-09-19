import 'package:booky_app/Futures/home/Domain/Repo/home_repo.dart';
import 'package:booky_app/core/error/failer.dart';
import 'package:dartz/dartz.dart';

import '../../../../core/use_cases/use_case.dart';
import '../Entities/BookEntites.dart';

class FetchFeatureBookUseCase extends UseCase<List<BookEntities>, void> {
  HomeRepo homeRepo;
  FetchFeatureBookUseCase(this.homeRepo);

  Future<Either<Fail, List<BookEntities>>> call([void param]) async {
    //check premission
    //هنا ملهاش لازمه
    return await homeRepo.fetchFeatureBook();
  }
}

class NoParam {}

//call او excuite الافضل نسميها كده منعدش الاسم
//لانها كده كده مش بنعمل غير حاجه واحده فقط
//Tpe هوه حاجه اسمها genrex جنركس
//هوه بيعمل ايه بيشيل اي كلمه انا مستخجم فيها type ويحط مكنها الي هكتبه فوق
//انا خليته optional عشان ممكن مبعتوشي
//اشتخدمها بدل viod هيا الافضل
