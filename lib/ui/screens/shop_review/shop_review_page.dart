import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:woodle/core/cubits/authentication/authentication_cubit.dart';
import 'package:woodle/core/models/shop_review/shop_review_model.dart';
import 'package:woodle/ui/screens/shop_review/bloc/shop_review_bloc.dart';
import 'package:woodle/ui/screens/shop_review/widgets/interactive_rating_box.dart';
import 'package:woodle/ui/screens/shop_review/widgets/review_view_box.dart';
import 'package:woodle/ui/widgets/empty.dart';
import 'package:woodle/ui/widgets/failed.dart';
import 'package:woodle/ui/widgets/loading.dart';

class ShopReviewPage extends HookWidget {
  const ShopReviewPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    useEffect(() {
      context.read<ShopReviewBloc>().add(ShopReviewEvent.fetchData());
    }, []);
    return Scaffold(
      appBar: AppBar(title: Text('Reviews')),
      body: _buildBloc(),
    );
  }

  Widget _buildBloc() {
    return BlocBuilder<ShopReviewBloc, ShopReviewState>(
        builder: (context, state) => state.when(
            loading: () => LoadingView(),
            loaded: (data) => _buildBody(context, data),
            failed: (exceptions) => FailedView(
                exceptions: exceptions,
                onRetry: () => context
                    .read<ShopReviewBloc>()
                    .add(ShopReviewEvent.fetchData()))));
  }

  Widget _buildBody(BuildContext context, ShopReviewModel data) {
    final user = context.read<AuthenticationCubit>().state.user;
    return ListView(
      padding: EdgeInsets.all(10),
      children: [
        user != null
            ? InteractiveRatingBox(
                onAdd: (ratingValue, ratingText) => context
                    .read<ShopReviewBloc>()
                    .add(ShopReviewEvent.addReview(ratingValue, ratingText)),
              )
            : SizedBox(),
        Divider(),
        Text(
          "All Reviews",
          style: Theme.of(context).textTheme.subtitle2,
          textAlign: TextAlign.start,
        ),
        data.allReviews.length > 0
            ? ListView.builder(
                itemBuilder: (context, index) =>
                    ReviewViewBox(data: data.allReviews[index]))
            : EmptyView(icon: Icons.reviews, title: 'No Reviews')
      ],
    );
  }
}
