import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:woodle/core/models/item/item_model.dart';
import 'package:woodle/ui/screens/item/bloc/item_bloc.dart';
import 'package:woodle/ui/screens/item/widgets/varient_lister.dart';
import 'package:woodle/ui/widgets/failed.dart';
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

  Widget _buildPage(ItemModel data, ValueNotifier<int> currentVarient) {
    List<String> itemImages =
        data.varients[currentVarient.value].itemImages!.length > 0
            ? data.varients[currentVarient.value].itemImages!
            : [data.varients[currentVarient.value].image];
    return ListView(
      children: [
        ItemImages(
          imgList: itemImages,
        ),
        Divider(),
        VarientLister(
            varients: data.varients,
            currentVarientId: data.varients[currentVarient.value].varientId,
            onPressed: (varientId) {
              currentVarient.value = data.varients
                  .indexWhere((varient) => varient.varientId == varientId);
            }),
        Divider(),
        data.varients[currentVarient.value].description != null
            ? Column(
                children: [
                  Text('Description'),
                  Text(data.varients[currentVarient.value].description!)
                ],
              )
            : SizedBox()
      ],
    ); //Carousel builder #Check pub readme
  }
}

class ItemImages extends HookWidget {
  final List<String> imgList;
  const ItemImages({Key? key, required this.imgList}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // final List<String> imgList = [
    //   'https://images.unsplash.com/photo-1520342868574-5fa3804e551c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=6ff92caffcdd63681a35134a6770ed3b&auto=format&fit=crop&w=1951&q=80',
    //   'https://images.unsplash.com/photo-1522205408450-add114ad53fe?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=368f45b0888aeb0b7b08e3a1084d3ede&auto=format&fit=crop&w=1950&q=80',
    //   'https://images.unsplash.com/photo-1519125323398-675f0ddb6308?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=94a1e718d89ca60a6337a6008341ca50&auto=format&fit=crop&w=1950&q=80',
    //   'https://images.unsplash.com/photo-1523205771623-e0faa4d2813d?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=89719a0d55dd05e2deae4120227e6efc&auto=format&fit=crop&w=1953&q=80',
    //   'https://images.unsplash.com/photo-1508704019882-f9cf40e475b4?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=8c6e5e3aba713b17aa1fe71ab4f0ae5b&auto=format&fit=crop&w=1352&q=80',
    //   'https://images.unsplash.com/photo-1519985176271-adb1088fa94c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=a0c8d632e977f94e5d312d9893258f59&auto=format&fit=crop&w=1355&q=80'
    // ];

    final _currentIndex = useState(0);

    CarouselOptions _options() => CarouselOptions(
        aspectRatio: 1.2,
        viewportFraction: 1,
        onPageChanged: (index, _) => _currentIndex.value = index);

    return Container(
      height: 300,
      child: Stack(
        children: [
          CarouselSlider.builder(
              itemCount: imgList.length,
              itemBuilder: (context, index, _) => Image.network(
                    imgList[index],
                    fit: BoxFit.cover,
                  ),
              options: _options()),
          Align(
            alignment: Alignment.bottomCenter,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: imgList.asMap().entries.map((entry) {
                return Container(
                  width: 8.0,
                  height: 8.0,
                  margin: EdgeInsets.symmetric(horizontal: 2.0, vertical: 10),
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Theme.of(context).primaryColor.withOpacity(
                          _currentIndex.value == entry.key ? 0.9 : 0.4)),
                );
              }).toList(),
            ),
          ),
        ],
      ),
    );
  }
}
