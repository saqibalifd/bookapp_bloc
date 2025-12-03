part of 'book_bloc.dart';

// abstract class BookEvent {}

// class BooksFetch extends BookEvent {}

abstract class BookEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

class FetchBooksEvent extends BookEvent {}
