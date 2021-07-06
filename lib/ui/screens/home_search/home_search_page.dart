import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:woodle/core/models/home_search/home_search_model.dart';
import 'package:woodle/ui/screens/home_search/bloc/home_search_bloc.dart';
import 'package:woodle/ui/screens/home_search/widgets/appbar.dart';
import 'package:woodle/ui/widgets/empty.dart';
import 'package:woodle/ui/widgets/failed.dart';
import 'package:woodle/ui/widgets/loading.dart';

class HomeSearchPage extends HookWidget {
  const HomeSearchPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final searchController = useTextEditingController();
    final showCancel = useState(false);

    useEffect(() {
      searchController.addListener(() {
        if (showCancel.value != searchController.text.isNotEmpty)
          showCancel.value = searchController.text.isNotEmpty;

        context
            .read<HomeSearchBloc>()
            .add(HomeSearchEvent.search(searchController.text));
      });
      return () => searchController.dispose();
    }, []);

    return Scaffold(
      appBar: HomeSearchAppBar(
          title: 'Search',
          controller: searchController,
          showCancel: showCancel.value),
      body: _buildBloc(),
    );
  }

  Widget _buildBloc() {
    return BlocBuilder<HomeSearchBloc, HomeSearchState>(
      builder: (context, state) {
        return state.when(
            loading: () => LoadingView(),
            loaded: (data) => _buildPage(data),
            failed: (error) => FailedView(
                exceptions: error,
                onRetry: () {
                  context.read<HomeSearchBloc>().add(HomeSearchEvent.reset());
                }));
      },
    );
  }

  Widget _buildPage(HomeSearchModel data) {
    if (data.items.isNotEmpty || data.shops.isNotEmpty) return Container();
    return EmptyView(icon: Icons.search_off, title: 'No results');
  }
}
