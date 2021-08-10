import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:woodle/core/models/item/item_model.dart';
import 'package:woodle/core/models/item_varient/item_varient_model.dart';
import 'package:woodle/core/services/cart.dart';
import 'package:woodle/ui/screens/item/bloc/item_bloc.dart';
import 'package:woodle/ui/screens/item/widgets/go_shop.dart';
import 'package:woodle/ui/screens/item/widgets/varient_lister.dart';
import 'package:woodle/ui/widgets/cart_tile.dart';
import 'package:woodle/ui/widgets/failed.dart';
import 'package:woodle/ui/widgets/item_varient_tile.dart';
import 'package:woodle/ui/widgets/loading.dart';

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
                  ItemImages(
                    aspectRatio:
                        data.varients[currentVarient.value].aspectRatio!,
                    imgList: itemImages,
                  ),
                  Divider(),
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
                  Divider(),
                  data.varients[currentVarient.value].description != null
                      ? Padding(
                          padding: EdgeInsets.all(10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Description',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 17)),
                              Text(data
                                  .varients[currentVarient.value].description!)
                            ],
                          ))
                      : SizedBox(),
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
  const ItemImages({Key? key, required this.imgList, required this.aspectRatio})
      : super(key: key);

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
              itemBuilder: (context, index, _) => Image.network(
                    imgList[index],
                    fit: BoxFit.contain,
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
