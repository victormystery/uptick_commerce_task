part of 'home_page_bloc.dart';

@immutable
sealed class HomePageState {
  final int tabIndex;

  HomePageState({required this.tabIndex});
}

final class HomePageInitial extends HomePageState {
  HomePageInitial({required super.tabIndex});
}
