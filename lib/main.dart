import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_bookly_app/constans.dart';
import 'package:my_bookly_app/core/utilies/app_route.dart';
import 'package:my_bookly_app/core/utilies/servise_locator.dart';
import 'package:my_bookly_app/features/home/data/repos/home_repo_implement.dart';
import 'package:my_bookly_app/features/home/presentation/manager/featured%20book_cubit/featured_book_cubit.dart';
import 'package:my_bookly_app/features/home/presentation/manager/featured%20newest%20book_cubit/featured_newest_book_cubit.dart';

void main() {
  setUp();
  runApp(const Bookly());
}

class Bookly extends StatelessWidget {
  const Bookly({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => FeaturedBookCubit(
            getIt.get<HomeRepoImplement>(),
          )..fetchFeaturedBook(),
        ),
        BlocProvider(
            create: (context) => FeaturedNewestBookCubit(
                  getIt.get<HomeRepoImplement>(),
                )..fetchNewestdBook())
      ],
      child: MaterialApp.router(
        routerConfig: AppRoute.router,
        theme: ThemeData.dark().copyWith(
            scaffoldBackgroundColor: kPrimaryColor,
            textTheme:
                GoogleFonts.abhayaLibreTextTheme(ThemeData.dark().textTheme)),
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
