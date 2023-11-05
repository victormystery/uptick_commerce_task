part of 'home_page_bloc.dart';

@immutable
sealed class HomePageEvent {}

class NavBar extends HomePageEvent {
  final int tabIndex;

  NavBar({required this.tabIndex});
}
