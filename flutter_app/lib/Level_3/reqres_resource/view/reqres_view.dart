import 'dart:developer';
import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/Level_1/image_learn.dart';
import 'package:flutter_app/Level_2/cache/shared_learn_cache.dart';
import 'package:flutter_app/Level_2/image_learn_202.dart';
import 'package:flutter_app/Level_3/reqres_resource/service/resource_service.dart';
import 'package:flutter_app/Level_3/reqres_resource/viewModel/reqres_provider_model.dart';
import 'package:flutter_app/product/extension/string_extension.dart';
import 'package:flutter_app/product/global/resource_context.dart';
import 'package:flutter_app/product/global/theme_notifier.dart';
import 'package:flutter_app/product/services/project_dio.dart';
import 'package:provider/provider.dart';

import '../model/resource_model.dart';
import '../viewModel/reqres_view_model.dart';

class ReqResView extends StatefulWidget {
  const ReqResView({super.key});

  @override
  State<ReqResView> createState() => _ReqResViewState();
}

// class _ReqResViewState extends ReqResViewModel {
class _ReqResViewState extends State<ReqResView> with ProjectDioMixin {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<ReqResProvider>(
      create: (context) => ReqResProvider(ReqresService(DioService)),
      builder: (context, child) {
        return Scaffold(
          floatingActionButton: FloatingActionButton(
            onPressed: () {
              context.read<ThemeNotifier>().changeTheme();
            },
          ),
          appBar: AppBar(
              actions: [
                ElevatedButton(
                    onPressed: () {
                      context
                          .read<ReqResProvider>()
                          .saveToLocale(context.read<ResourceContext>());
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) {
                          return const ImageLearnLevel2();
                        },
                      ));
                    },
                    child: const Icon(Icons.ac_unit))
              ],
              centerTitle: true,
              title: context.watch<ReqResProvider>().isLoading
                  ? CircularProgressIndicator(
                       color: Colors.amber,
                    )
                  : null),
          body: Column(
            children: [
              Selector<ReqResProvider, bool>(builder: (context, value, child) {
                return value ? Placeholder() : Text('Flutter');
              }, selector: (context, provider) {
                return provider.isLoading;
              }),
              Expanded(
                child: _providerListView(
                    context, context.watch<ReqResProvider>().resources),
              ),
            ],
          ),
        );
      },
      // child: Scaffold(
      //   appBar: AppBar(title: isLoading ? CircularProgressIndicator() : null),
      //   body: ListView.builder(
      //       itemCount: resources.length,
      //       itemBuilder: (BuildContext context, int index) {
      //         inspect(resources[index]);

      //         return Card(
      //             color: Color(resources[index].color?.colorValue ?? 0),
      //             child: Text(resources[index].name ?? ''));
      //       }),
      // ),
    );
  }

  ListView _providerListView(BuildContext context, List<Data> items) {
    return ListView.builder(
        itemCount: items.length,
        itemBuilder: (BuildContext context, int index) {
          return Card(
              color: Color(items[index].color?.colorValue ?? 0),
              child: Text(items[index].name ?? ''));
        });
  }
}
