part of 'featured_books_cubits_cubit.dart';

abstract class FeaturedBooksCubitsState extends Equatable {
  const FeaturedBooksCubitsState();

  @override
  List<Object> get props => [];
}

class FeaturedBooksCubitsInitial extends FeaturedBooksCubitsState {}

class FeaturedBooksCubitsLoding extends FeaturedBooksCubitsState {}

class FeaturedBooksCubitsFailure extends FeaturedBooksCubitsState {
  final String errmassage;
  const FeaturedBooksCubitsFailure(this.errmassage);
}

class FeaturedBooksCubitsSucces extends FeaturedBooksCubitsState {
  final List<BooksModel> Books;
  const FeaturedBooksCubitsSucces(this.Books);
}
