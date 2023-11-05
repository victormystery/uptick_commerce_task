part of 'home_bloc.dart';

@immutable
sealed class HomeState {}

final class HomeInitial extends HomeState {
 
}

class HomeLoadingState extends HomeState {}
class HomeErrorState extends HomeState {}
class HomeSuccessState extends HomeState {
   final List<ShoeProduct> products;

  HomeSuccessState({required this.products});

  
}
