import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:cinemapedia/presentation/providers/providers.dart';


class HomeScreen extends StatelessWidget {
  static const name = 'home_screen';
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: _HomeView(),
    );
  }
}

class _HomeView extends ConsumerStatefulWidget {
  const _HomeView();

  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends ConsumerState<_HomeView> {
  @override
  void initState() {
    super.initState();
    ref.read(nowPlayMoviesProvider.notifier).loadNextPage();
  }

  @override
  Widget build(BuildContext context) {
    final nowPlayingMovies = ref.watch(nowPlayMoviesProvider);

    // if (nowPlayingMovies.isEmpty) return CircularProgressIndicator();

    return ListView.builder(
      itemCount: nowPlayingMovies.length,
      itemBuilder: (context, index) {
        final movie = nowPlayingMovies[index];

        return ListTile(
          title: Text(movie.title),
        );
      },
    );
  }
}
