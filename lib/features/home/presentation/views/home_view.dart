import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:my_bookly_app/core/utilies/api_service.dart';
import 'package:my_bookly_app/features/home/data/repos/home_repo_implement.dart';
import 'package:my_bookly_app/features/home/presentation/views/widgets/home_view_body.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    HomeRepoImplement homeRepoImplement =
        HomeRepoImplement(apiService: ApiService(dio: Dio()));
    Future<void> refreshData(BuildContext context) async {
      await homeRepoImplement.fetchFeatureBooks();
    }

    return Scaffold(
      body: RefreshIndicator(
        onRefresh: () {
          return refreshData(context);
        },
        child: Column(
          children: [
            HomeViewBody(),
          ],
        ),
      ),
    );
  }
}
