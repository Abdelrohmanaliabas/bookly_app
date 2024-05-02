import 'package:bloc/bloc.dart';
import 'package:bookly_app/Features/data/models/books_model/books_model.dart';
import 'package:bookly_app/Features/data/repost/home_repo.dart';
import 'package:equatable/equatable.dart';

part 'featured_books_cubits_state.dart';

class FeaturedBooksCubitsCubit extends Cubit<FeaturedBooksCubitsState> {
  FeaturedBooksCubitsCubit(this.homeRebo) : super(FeaturedBooksCubitsInitial());

  final HomeRebo homeRebo;
  Future<void> fetchFeaturedBooks() async {
    emit(FeaturedBooksCubitsLoding());
    var result = await homeRebo.fetchFeatureBooks();
    result.fold((failure) {
      emit(FeaturedBooksCubitsFailure(failure.errMassage));
    }, (books) {
      emit(FeaturedBooksCubitsSucces(books));
    });
  }
}
