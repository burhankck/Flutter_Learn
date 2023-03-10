import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/Level_2/cache/shared_learn_cache.dart';
import 'package:flutter_app/Level_3/reqres_resource/model/resource_model.dart';
import 'package:flutter_app/Level_3/reqres_resource/service/resource_service.dart';
import 'package:flutter_app/product/services/project_dio.dart';

import '../view/reqres_view.dart';

abstract class ReqResViewModel extends LoadingStatefull<ReqResView>
    with ProjectDioMixin {
  late final IReqresService reqresService;
  List<Data> resources = [];
  @override
  void initState() {
    super.initState();
    reqresService = ReqresService(DioService);
    _fetch();
  }

  Future<void> _fetch() async {
    changeLoading();
    resources = (await reqresService.fetchResourceItem())?.data ?? [];
    changeLoading();
  }

 
}
