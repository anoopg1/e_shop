import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:e_shop/core/api_endpoints.dart';
import 'package:e_shop/core/failures/main_failures.dart';
import 'package:e_shop/domain/home/home_services.dart';
import 'package:e_shop/domain/home/model/home_product_model/home_product_model.dart';
import 'package:injectable/injectable.dart';

@Singleton(as: HomeServices)
class HomeRepository implements HomeServices {
  @override
  Future<Either<MainFailure, List<HomeProductModel>>> getAllProducts() async {
    try {
      final Response response =
          await Dio(BaseOptions()).get(ApiEndpoints.getAllProducts);
          print(ApiEndpoints.getAllProducts);
      if (response.statusCode == 200) {
        final allProductsList = (response.data as List).map((e) {
          return HomeProductModel.fromJson(e);
        }).toList();
        print(allProductsList);
        return Right(allProductsList);
      } else {
        return const Left(MainFailure.serverFailure());
      }
    } catch (e) {
      return const Left(MainFailure.clientFailure());
    }
  }

  @override
  Future<Either<MainFailure, List<HomeProductModel>>>
      getElectronicsProducts() async {
    try {
      final Response response =
          await Dio(BaseOptions()).get(ApiEndpoints.getElectronicsProducts);
      if (response.statusCode == 200) {
        final electronicProductsList =
            (response.data as List).map((e) {
          return HomeProductModel.fromJson(e);
        }).toList();
        return Right(electronicProductsList);
      } else {
        return const Left(MainFailure.serverFailure());
      }
    } catch (e) {
      return const Left(MainFailure.clientFailure());
    }
  }

  @override
  Future<Either<MainFailure, List<HomeProductModel>>>
      getJeweleryProducts() async {
    try {
      final Response response =
          await Dio(BaseOptions()).get(ApiEndpoints.getJeweleryProducts);
      if (response.statusCode == 200) {
        final jeweleryProductsList =
            (response.data as List).map((e) {
          return HomeProductModel.fromJson(e);
        }).toList();
        return Right(jeweleryProductsList);
      } else {
        return const Left(MainFailure.serverFailure());
      }
    } catch (e) {
      return const Left(MainFailure.clientFailure());
    }
  }

  @override
  Future<Either<MainFailure, List<HomeProductModel>>>
      getMenClothingProducts() async {
    try {
      final Response response =
          await Dio(BaseOptions()).get(ApiEndpoints.getMenClothingProducts);
      if (response.statusCode == 200) {
        final menclothingProductsList =
            (response.data as List).map((e) {
          return HomeProductModel.fromJson(e);
        }).toList();
        return Right(menclothingProductsList);
      } else {
        return const Left(MainFailure.serverFailure());
      }
    } catch (e) {
      return const Left(MainFailure.clientFailure());
    }
  }

  @override
  Future<Either<MainFailure, List<HomeProductModel>>>
      getWomenClothingProducts() async {
    try {
      final Response response =
          await Dio(BaseOptions()).get(ApiEndpoints.getWomenClothingProducts);
      if (response.statusCode == 200) {
        final womenclothingProductsList =
            (response.data as List).map((e) {
          return HomeProductModel.fromJson(e);
        }).toList();
        return Right(womenclothingProductsList);
      } else {
        return const Left(MainFailure.serverFailure());
      }
    } catch (e) {
      return const Left(MainFailure.clientFailure());
    }
  }
}
