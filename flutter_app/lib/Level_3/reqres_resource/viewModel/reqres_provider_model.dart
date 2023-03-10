import 'package:flutter/material.dart';
import 'package:flutter_app/product/global/resource_context.dart';

import '../model/resource_model.dart';
import '../service/resource_service.dart';

class ReqResProvider extends ChangeNotifier {
  final IReqresService reqresService;
  List<Data> resources = [];
  bool isLoading = false;

  void _changeLoadings() {
    isLoading = !isLoading;
    notifyListeners();
    // Her bu islem olduktan sonra ekrana haber vermek icin notifyListeners kullanılır.
  }

  ReqResProvider(this.reqresService) {
    _fetch();
  }

  Future<void> _fetch() async {
    _changeLoadings();
    resources = (await reqresService.fetchResourceItem())?.data ?? [];
    _changeLoadings();
  }

  void saveToLocale(ResourceContext resourceContext) {
    resourceContext.saveModel(ResourceModel(data: resources));
  }
}
