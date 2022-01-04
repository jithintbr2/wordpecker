import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:woodle/core/models/item/item_model.dart';
import 'package:woodle/core/models/item_varient/item_varient_model.dart';
import 'package:woodle/core/repository/repository.dart';
import 'package:woodle/core/services/cart.dart';
import 'package:woodle/ui/screens/item/bloc/item_bloc.dart';
import 'package:woodle/ui/screens/item/widgets/go_shop.dart';
import 'package:woodle/ui/screens/item_reviews/bloc/item_review_bloc.dart';
import 'package:woodle/ui/screens/item_reviews/item_review_page.dart';
import 'package:woodle/ui/screens/shop_review/widgets/review_view_box.dart';
import 'package:woodle/ui/widgets/cart_tile.dart';
import 'package:woodle/ui/widgets/failed.dart';
import 'package:woodle/ui/widgets/item_varient_tile.dart';
import 'package:woodle/ui/widgets/loading.dart';
import 'package:zoom_widget/zoom_widget.dart';

///ItemPage represents item details page aka. product page.
///This page will contain the product details.
class ItemPage extends HookWidget {
  final int itemId;
  final String itemName;
  const ItemPage({
    Key? key,
    required this.itemId,
    required this.itemName,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _currentVarient = useState(0);
    useEffect(() {
      context.read<ItemBloc>().add(ItemEvent.fetchData(itemId));
    }, []);
    return Scaffold(
      appBar: AppBar(title: Text(itemName)),
      body: _buildBloc(_currentVarient),
    );
  }

  Widget _buildBloc(ValueNotifier<int> currentVarient) {
    return BlocBuilder<ItemBloc, ItemState>(
        builder: (context, state) => state.when(
            loading: () => LoadingView(),
            loaded: (data) => _buildPage(data, currentVarient),
            failed: (exceptions) => FailedView(
                exceptions: exceptions,
                onRetry: () => context
                    .read<ItemBloc>()
                    .add(ItemEvent.fetchData(itemId)))));
  }

  int _getCartQuantity(List<ItemVarientModel>? data, int id) {
    int quantity = 0;
    if (data != null)
      data.forEach((item) {
        if (item.varientId == id) quantity += 1;
      });

    return quantity;
  }

  Widget _buildPage(ItemModel data, ValueNotifier<int> currentVarient) {
    CartService service = CartService();
    List<String> itemImages =
        data.varients[currentVarient.value].itemImages!.length > 0
            ? data.varients[currentVarient.value].itemImages!
            : [data.varients[currentVarient.value].image];
    return StreamBuilder(
        initialData: service.initialValue(),
        stream: service.controller,
        builder: (context, AsyncSnapshot<List<ItemVarientModel>> snap) {
          List<String> varientTypes = data.varients
              .map((varient) => varient.varientType)
              .toSet()
              .toList();
          double _totalPrice = 0;
          int _itemCount = 0;

          snap.data?.forEach((item) {
            _totalPrice += item.salePrice!;
            _itemCount += 1;
          });
          return Column(
            children: [
              Expanded(
                  child: ListView(
                children: [
                  Card(
                      child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ItemImages(
                          aspectRatio:
                              data.varients[currentVarient.value].aspectRatio!,
                          imgList: itemImages,
                          onTap: (image) => showDialog(
                              context: context,
                              builder: (ctx) => Stack(
                                    children: [
                                      Zoom(
                                          backgroundColor: Colors.transparent,
                                          colorScrollBars: Colors.transparent,
                                          initZoom: 0.0,
                                          maxZoomWidth: 1800,
                                          maxZoomHeight: 1800,
                                          child: Image.network(
                                            image,
                                            fit: BoxFit.contain,
                                          )),
                                      Positioned(
                                          right: 0,
                                          top: 0,
                                          child: Card(
                                            child: IconButton(
                                              icon: Icon(Icons.cancel),
                                              onPressed: () =>
                                                  Navigator.pop(ctx),
                                            ),
                                          ))
                                    ],
                                  ))),
                      SizedBox(height: 10),
                      Padding(
                          padding: EdgeInsets.all(10),
                          child: Text(
                            data.varients[currentVarient.value].varientName,
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          )),
                      Padding(
                          padding: EdgeInsets.symmetric(horizontal: 10),
                          child: Text(
                            data.varients[currentVarient.value].description ??
                                '',
                            style: TextStyle(fontWeight: FontWeight.w300),
                          )),
                      Padding(
                          padding:
                              EdgeInsets.only(left: 10, right: 10, bottom: 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  data.varients[currentVarient.value]
                                              .salePrice ==
                                          data.varients[currentVarient.value]
                                              .mrp
                                      ? Text(
                                          "₹${data.varients[currentVarient.value].salePrice}",
                                          style: Theme.of(context)
                                              .textTheme
                                              .bodyText1!
                                              .copyWith(fontSize: 14))
                                      : Row(children: [
                                          Text(
                                              "₹${data.varients[currentVarient.value].salePrice}",
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .bodyText1!
                                                  .copyWith(fontSize: 14)),
                                          SizedBox(width: 10),
                                          Text(
                                              "₹${data.varients[currentVarient.value].mrp}",
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .bodyText1!
                                                  .copyWith(
                                                    decoration: TextDecoration
                                                        .lineThrough,
                                                    decorationThickness: 2,
                                                    color: Colors.red,
                                                    fontSize: 12,
                                                  ))
                                        ])
                                ],
                              ),
                              ElevatedButton(
                                  onPressed: () => service.addItem(context,
                                      data.varients[currentVarient.value]),
                                  child: Text('Add'))
                            ],
                          ))
                    ],
                  )),
                  Divider(),
                  ItemReviews(itemId: itemId),
                  // VarientLister(
                  //     varients: data.varients,
                  //     currentVarientId: data.varients[currentVarient.value].varientId,
                  //     onPressed: (varientId) {
                  //       currentVarient.value = data.varients
                  //           .indexWhere((varient) => varient.varientId == varientId);
                  //     }),
                  ListView(
                    physics: NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    children: varientTypes
                        .map((type) => Column(
                              crossAxisAlignment: CrossAxisAlignment.stretch,
                              children: [
                                Container(
                                  padding: EdgeInsets.symmetric(
                                      vertical: 5, horizontal: 20),
                                  child: Text(
                                    type,
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                  color: Theme.of(context)
                                      .primaryColor
                                      .withOpacity(0.3),
                                ),
                                ListView.builder(
                                  physics: NeverScrollableScrollPhysics(),
                                  shrinkWrap: true,
                                  itemBuilder: (context, index) {
                                    if (data.varients[index].varientType ==
                                        type)
                                      return ItemVarientTile(
                                          elevation: 0,
                                          item: data.varients[index],
                                          onTap: () =>
                                              currentVarient.value = index,
                                          onAdd: () => service.addItem(
                                              context, data.varients[index]),
                                          onRemove: () => service
                                              .removeItem(data.varients[index]),
                                          quantity: _getCartQuantity(snap.data,
                                              data.varients[index].varientId));
                                    return SizedBox();
                                  },
                                  itemCount: data.varients.length,
                                )
                              ],
                            ))
                        .toList(),
                  ),
                  SizedBox(height: 50)
                ],
              )),
              GoToShopAddon(shopId: data.varients[0].shopId),
              snap.hasData && snap.data!.length > 0
                  ? CartTile(
                      itemCount: _itemCount,
                      totalPrice: _totalPrice,
                    )
                  : SizedBox()
            ],
          );
        });
  }
}

class ItemImages extends HookWidget {
  final List<String> imgList;
  final double aspectRatio;
  final Function(String) onTap;
  const ItemImages({
    Key? key,
    required this.imgList,
    required this.aspectRatio,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _currentIndex = useState(0);

    CarouselOptions _options() => CarouselOptions(
        // aspectRatio: 1.2,
        aspectRatio: aspectRatio,
        viewportFraction: 1,
        onPageChanged: (index, _) => _currentIndex.value = index);

    return Container(
      // height: 300,
      child: Stack(
        children: [
          CarouselSlider.builder(
              itemCount: imgList.length,
              // itemBuilder: (context, index, _) => Zoom(
              //     colorScrollBars: Colors.transparent,
              //     initZoom: 0.0,
              //     maxZoomWidth: 1800,
              //     maxZoomHeight: 1800,
              //     child: Image.network(
              //       imgList[index],
              //       fit: BoxFit.contain,
              //     )),
              itemBuilder: (context, index, _) => InkWell(
                    onTap: () => onTap(imgList[index]),
                    child: Image.network(
                      imgList[index],
                      fit: BoxFit.contain,
                    ),
                  ),
              options: _options()),
          // Align(
          //   alignment: Alignment.bottomCenter,
          //   child: Row(
          //     mainAxisAlignment: MainAxisAlignment.center,
          //     children: imgList.asMap().entries.map((entry) {
          //       return Container(
          //         width: 8.0,
          //         height: 8.0,
          //         margin: EdgeInsets.symmetric(horizontal: 2.0, vertical: 10),
          //         decoration: BoxDecoration(
          //             shape: BoxShape.circle,
          //             color: Theme.of(context).primaryColor.withOpacity(
          //                 _currentIndex.value == entry.key ? 0.9 : 0.4)),
          //       );
          //     }).toList(),
          //   ),
          // ),
        ],
      ),
    );
  }
}

class ItemReviews extends HookWidget {
  final int itemId;
  const ItemReviews({Key? key, required this.itemId}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    useEffect(() {
      context.read<ItemReviewBloc>().add(ItemReviewEvent.fetchAll(itemId));
    }, []);
    return BlocBuilder<ItemReviewBloc, ItemReviewState>(
        builder: (context, state) => state.when(
            loading: () => LoadingView(),
            loaded: (data) => InkWell(
                  onTap: () => Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => BlocProvider(
                          create: (context) => ItemReviewBloc(
                              repository:
                                  context.read<ApplicationRepository>()),
                          child: ItemReviewPage(
                            itemId: itemId,
                          )))),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "All Reviews",
                        style: Theme.of(context).textTheme.subtitle2,
                        textAlign: TextAlign.start,
                      ),
                      data.allReviews.length > 0
                          ? ListView.separated(
                              physics: NeverScrollableScrollPhysics(),
                              shrinkWrap: true,
                              itemCount: data.allReviews.length > 3
                                  ? 3
                                  : data.allReviews.length,
                              itemBuilder: (context, index) =>
                                  ReviewViewBox(data: data.allReviews[index]),
                              separatorBuilder: (_, __) => Divider(),
                            )
                          : Padding(
                              padding: EdgeInsets.all(10),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text('No Reviews yet'),
                                  ElevatedButton(
                                      onPressed: () => Navigator.of(context)
                                          .push(MaterialPageRoute(
                                              builder: (context) =>
                                                  BlocProvider(
                                                      create: (context) =>
                                                          ItemReviewBloc(
                                                              repository:
                                                                  context.read<
                                                                      ApplicationRepository>()),
                                                      child: ItemReviewPage(
                                                        itemId: itemId,
                                                      )))),
                                      child: Text('Add a Review'))
                                ],
                              ),
                            )
                    ],
                  ),
                ),
            failed: (exception) => SizedBox()));
  }
}

class ItemReviewsPage extends StatelessWidget {
  final int itemId;
  const ItemReviewsPage({Key? key, required this.itemId}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    useEffect(() {
      context.read<ItemReviewBloc>().add(ItemReviewEvent.fetchAll(itemId));
    }, []);
    return BlocBuilder<ItemReviewBloc, ItemReviewState>(
        builder: (context, state) => state.when(
            loading: () => LoadingView(),
            loaded: (data) => Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "All Reviews",
                      style: Theme.of(context).textTheme.subtitle2,
                      textAlign: TextAlign.start,
                    ),
                    data.allReviews.length > 0
                        ? ListView.separated(
                            physics: NeverScrollableScrollPhysics(),
                            shrinkWrap: true,
                            itemCount: data.allReviews.length,
                            itemBuilder: (context, index) =>
                                ReviewViewBox(data: data.allReviews[index]),
                            separatorBuilder: (_, __) => Divider(),
                          )
                        : Padding(
                            padding: EdgeInsets.all(10),
                            child: Text('No Reviews yet'),
                          )
                  ],
                ),
            failed: (exception) => SizedBox()));
  }
}
