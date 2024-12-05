import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:my_bookly_app/core/utilies/servise_locator.dart';
import 'package:my_bookly_app/features/home/data/models/book_model/book_model.dart';
import 'package:my_bookly_app/features/home/data/repos/home_repo_implement.dart';
import 'package:my_bookly_app/features/home/presentation/manager/similer_bool_cubit/similer_book_cubit.dart';
import 'package:my_bookly_app/features/home/presentation/views/home_view.dart';
import 'package:my_bookly_app/features/home/presentation/views/widgets/book_details_view.dart';
import 'package:my_bookly_app/features/search/presentation/search_view.dart';
import 'package:my_bookly_app/features/splash/presentation/views/spalsh_view.dart';

abstract class AppRoute {
  static const String kHomeView = "/homeView";
  static const String kBookDetails = "/bookDetails";
  static const String kSearchView = "/searchView";
  static final router = GoRouter(
    routes: [
      GoRoute(
        path: "/",
        builder: (context, state) => SpalshView(),
      ),
      GoRoute(path: kHomeView, builder: (context, state) => HomePage()),
      GoRoute(
          path: kBookDetails,
          builder: (context, state) => BlocProvider(
                create: (context) =>
                    SimilerBookCubit(getIt.get<HomeRepoImplement>()),
                child: BookDetailsView(
                  bookModel: state.extra as BookModel,
                ),
              )),
      GoRoute(path: kSearchView, builder: (context, state) => SearchView()),
    ],
  );
}
