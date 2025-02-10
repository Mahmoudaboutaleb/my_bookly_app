import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart'; // Import for SystemNavigator
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

    // Function to show exit confirmation dialog
    Future<bool> _onPopInvoked(bool didPop) async {
      final shouldExit = await showDialog<bool>(
        context: context,
        builder: (context) => AlertDialog(
          elevation: 0,
          title: const Text('Exit App'),
          content: const Text('Do you really want to exit the app?'),
          actions: [
            TextButton(
              onPressed: () => Navigator.of(context).pop(false), // No
              child: const Text('No'),
            ),
            TextButton(
              onPressed: () => Navigator.of(context).pop(true), // Yes
              child: const Text('Yes'),
            ),
          ],
        ),
      );
      return shouldExit ?? false; // Return false if the dialog is dismissed
    }

    return PopScope<bool>(
      canPop: false, // Disable default back behavior
      onPopInvokedWithResult: (didPop, result) async {
        if (didPop) {
          // If the pop was successful, exit the app
          return;
        }
        // Show confirmation dialog
        final shouldExit = await _onPopInvoked(didPop);
        if (shouldExit) {
          // Exit the app completely
          SystemNavigator.pop(); // Close the app
        }
      },
      child: Scaffold(
        body: RefreshIndicator(
          onRefresh: () => refreshData(context),
          child: const Column(
            children: [
              HomeViewBody(),
            ],
          ),
        ),
      ),
    );
  }
}
