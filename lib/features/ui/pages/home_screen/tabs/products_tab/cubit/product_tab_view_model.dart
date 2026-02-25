
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:route_commerce/core/exceptions/app_exception.dart';
import 'package:route_commerce/domain/use_cases/get_all_products_use_case.dart';
import 'package:route_commerce/features/ui/pages/home_screen/tabs/products_tab/cubit/product_tab_states.dart' ;


@injectable
class ProductTabViewModel extends Cubit<ProductTabStates>{
  GetAllProductsUseCase getAllProductsUseCase ;
  ProductTabViewModel({required this.getAllProductsUseCase}):super(ProductLoadingState());
  //todo: hold data - handle logic


  Future<void> getProducts()async{
    try{
      emit(ProductLoadingState());
      var productsList = await getAllProductsUseCase.invoke();
      emit(ProductSuccessState(productsList: productsList));
    }on AppException catch(e){
      emit(ProductErrorState(message: e.message));
    }
  }
}