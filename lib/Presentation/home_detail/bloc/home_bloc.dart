import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:commerce_uptick_task/models/product.dart';
import 'package:meta/meta.dart';

import '../../../data/shoe_data.dart';

part 'home_event.dart';
part 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc() : super(HomeInitial()) {
    on<HomeInitialEvent>(homeInitialEvent);
  }

  Future<void> homeInitialEvent(HomeInitialEvent event, Emitter<HomeState> emit) async {
    emit(HomeLoadingState());

    
    await Future.delayed(Duration(seconds: 2));

   
    final List<ShoeProduct> products = ShoeProductData.shoeProductsData.map((shoeData) {
      return ShoeProduct(
        id: shoeData['id'],
        name: shoeData['name'],
        price: shoeData['price'].toDouble(),
        description: shoeData['description'],
        imageUrl: shoeData['imageUrl'],
      );
    }).toList();

    emit(HomeSuccessState(products: products));
  }
}
