import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:woodle/core/models/home_page/home_page_model.dart';
import 'package:woodle/ui/screens/home/bloc/home_bloc.dart';
import 'package:woodle/ui/screens/home/widgets/appbar.dart';
import 'package:woodle/ui/screens/home/widgets/drawer.dart';
import 'package:woodle/ui/widgets/carousel.dart';
import 'package:woodle/ui/widgets/category.dart';
import 'package:woodle/ui/widgets/loading.dart';
import 'package:woodle/ui/widgets/marquee.dart';

class HomePage extends HookWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    useEffect(() {
      context.read<HomeBloc>().add(HomeEvent.fetchData());
    }, []);
    return Scaffold(
      appBar: HomeAppBar(),
      drawer: HomeDrawer(),
      body: _buildBloc(),
    );
  }

  _buildBloc() {
    Widget _view = LoadingView();
    return BlocBuilder<HomeBloc, HomeState>(
      builder: (context, state) {
        state.when(loading: () {
          _view = LoadingView();
        }, loaded: (data) {
          _view = RefreshIndicator(
              child: _buildPage(data),
              onRefresh: () async {
                context.read<HomeBloc>().add(HomeEvent.fetchData());
                return null;
              });
        }, failed: () {
          _view = Container();
        });
        return _view;
      },
    );
  }

  _buildPage(HomePageModel data) {
    return ListView(
      children: [
        Carousel(items: data.carouselx1 ?? []),
        SizedBox(height: 10),
        MarqueeWidget(text: data.message ?? ''),
        Category(items: data.categories ?? []),
        SizedBox(height: 10),
        Carousel(items: data.carouselx2 ?? [])
      ],
    );
  }
}
