import 'dart:convert';
import 'dart:io';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:dio/dio.dart';
import 'package:epub_viewer/epub_viewer.dart';
import 'package:path_provider/path_provider.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:woodle/core/models/authors/authors_model.dart';
import 'package:woodle/core/models/epub/epub_model.dart';
import 'package:woodle/core/models/shop/shop_model.dart';
import 'package:woodle/core/settings/assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';





class EpubTile extends HookWidget {

  final List<EPubModel> epub;
  bool loading = false;
  Dio dio = new Dio();
  String filePath = "";
  EpubTile({required this.epub,Key? key}) : super(key: key);

  @override
  SliverGridDelegate _gridDelegate() =>
      SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2, childAspectRatio: 0.6);
  Widget _buildItem(EPubModel epubs) => Container(
    height: 400,
    child: Card(
      clipBehavior: Clip.antiAliasWithSaveLayer,
      child: Stack(
        children: [
          Container(

              height: double.infinity,
              child: CachedNetworkImage(

                imageUrl:epubs.image,
                fit: BoxFit.cover,
                placeholder: (_, __) =>
                    Center(child: Image.asset(Assets.appIcon)),
                errorWidget: (_, __, ___) => Center(child: Icon(Icons.error)),
              )),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
                width: double.infinity,
                padding: EdgeInsets.all(1),
                color: Colors.black,
                child: Text(
                  epubs.name,
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.white),
                    overflow: TextOverflow.ellipsis

                )),
          )

        ],
      ),
    ),
  );


  @override
  Widget build(BuildContext context) {

    return
      Padding(
        padding: EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          children: [
            GridView.builder(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                gridDelegate: _gridDelegate(),
                itemBuilder: (context, index) => InkWell(
                  onTap: () async {
                    downloadFile(epub[index].fileName,epub[index].itemId);





                  },
                  child: _buildItem(epub[index]),
                ),
                itemCount:epub.length)
          ],
        ),
      );
  }
  Future downloadFile(file,itemId) async {
    print('download1');

    if (await Permission.storage.isGranted) {
      print('download2');
      await Permission.storage.request();
      await startDownload(file,itemId);
    } else {
      await startDownload(file,itemId);
    }
  }

  startDownload(downloadeFile,itemId) async {

    Directory? appDocDir = Platform.isAndroid
        ? await getExternalStorageDirectory()
        : await getApplicationDocumentsDirectory();

    String path = appDocDir!.path + '/'+itemId.toString()+'.epub';

    File file = File(path);

//    await file.delete();

    if (!File(path).existsSync()) {
      await file.create();
      await dio.download(downloadeFile,
        path,
        deleteOnError: true,
        onReceiveProgress: (receivedBytes, totalBytes) {
          print((receivedBytes / totalBytes * 100).toStringAsFixed(0));
          //Check if download is complete and close the alert dialog
          if (receivedBytes == totalBytes) {
            loading = false;


            print(filePath);


            EpubViewer.setConfig(
                themeColor: Colors.black,
                identifier: "iosBook",
                scrollDirection: EpubScrollDirection.ALLDIRECTIONS,
                allowSharing: true,
                enableTts: true,
                nightMode: true);

            // get current locator
            EpubViewer.locatorStream.listen((locator) {
              print(
                  'LOCATOR: ${EpubLocator.fromJson(jsonDecode(locator))}');
            });

              filePath = path;
            EpubViewer.open(
              filePath,
              lastLocation: EpubLocator.fromJson({
                "bookId": "2239",
                "href": "/OEBPS/ch06.xhtml",
                "created": 1539934158390,
                "locations": {
                  "cfi": "epubcfi(/0!/4/4[simple_book]/2/2/6)"
                }
              }),
            );

          }
        },
      );
    } else {
      loading = false;



      EpubViewer.setConfig(
          themeColor: Colors.black,
          identifier: "iosBook",
          scrollDirection: EpubScrollDirection.ALLDIRECTIONS,
          allowSharing: true,
          enableTts: true,
          nightMode: true);

      // get current locator
      EpubViewer.locatorStream.listen((locator) {
        print(
            'LOCATOR: ${EpubLocator.fromJson(jsonDecode(locator))}');
      });

        filePath = path;
      EpubViewer.open(
        filePath,
        lastLocation: EpubLocator.fromJson({
          "bookId": "2239",
          "href": "/OEBPS/ch06.xhtml",
          "created": 1539934158390,
          "locations": {
            "cfi": "epubcfi(/0!/4/4[simple_book]/2/2/6)"
          }
        }),
      );

    }
  }
}
