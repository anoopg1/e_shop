part of 'home_bloc.dart';

@freezed
class HomeEvent with _$HomeEvent {
  const factory HomeEvent.getAllProducts() = GetAllProducts;
  const factory HomeEvent.navigatetoCart() = NavigatetoCart;
  const factory HomeEvent.navigatetoWishlist() = NavigatetoWishlist;
  const factory HomeEvent.navigateProductDetails() = NavigateProductDetails;
  const factory HomeEvent.getElectronicsProducts() = GetElectronicsProducts;
  const factory HomeEvent.getJeweleryProducts() = GetJeweleryProducts;
  const factory HomeEvent.getMenClothingProducts() = GetMenClothingProducts;
  const factory HomeEvent.getWomenClothingProducts() = GetWomenClothingProducts;
}
