import 'package:dartz/dartz.dart';
import 'package:e_shop/core/failures/main_failures.dart';
import 'package:e_shop/domain/home/model/home_product_model/home_product_model.dart';

abstract class HomeServices {
  Future<Either<MainFailure, List<HomeProductModel>>> getAllProducts();
  Future<Either<MainFailure, List<HomeProductModel>>> getElectronicsProducts();
  Future<Either<MainFailure, List<HomeProductModel>>> getJeweleryProducts();
  Future<Either<MainFailure, List<HomeProductModel>>> getMenClothingProducts();
  Future<Either<MainFailure, List<HomeProductModel>>> getWomenClothingProducts();
}
