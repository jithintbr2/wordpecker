import 'dart:async';
import 'dart:convert';
import 'dart:io';
import 'dart:math';
import 'package:path/path.dart';

import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_image_compress/flutter_image_compress.dart';
import 'package:flutter_uploader/flutter_uploader.dart';
import 'package:woodle/core/models/address/address_model.dart';
import 'package:woodle/core/models/upload_item.dart';
import 'package:woodle/core/services/storage.dart';
import 'package:woodle/core/settings/config.dart';
import 'package:woodle/ui/screens/request_item/bloc/request_item_bloc.dart';
import 'package:path_provider/path_provider.dart';

class RequestItemPage extends HookWidget {
  const RequestItemPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _formKey = GlobalKey<FormState>();
    final _itemNameController = useTextEditingController();
    final _itemQuantity = useState(1);
    final _remarkController = useTextEditingController();
    final _items = useState([]);
    final _imageList = useState<List<String>>([]);

    StreamSubscription<UploadTaskProgress>? _progressSubscription;
    StreamSubscription<UploadTaskResponse>? _resultSubscription;

    final _tasks = useState<Map<String, UploadItem>>({});

    int franchieId = 0;
    FlutterUploader _uploader = FlutterUploader();

    useEffect(() {
      LocalStorage _localStorage = LocalStorage();
      AddressModel? _getAddress() {
        if (_localStorage.get('currentAddress') != null) {
          Map<String, dynamic> currentAddressRaw =
              jsonDecode(_localStorage.get('currentAddress') as String);
          return AddressModel.fromJson(currentAddressRaw);
        }
        return null;
      }

      final address = _getAddress();
      franchieId = address!.franchiseId;
    }, []);

    useEffect(() {
      _progressSubscription = _uploader.progress.listen((progress) {
        final task = _tasks.value[progress.taskId];
        print(
            'In MAIN APP: ID: ${progress.taskId}, progress: ${progress.progress}');
        if (task == null) return;
        if (task.isCompleted()) return;

        var tmp = <String, UploadItem>{}..addAll(_tasks.value);
        tmp.putIfAbsent(progress.taskId, () => UploadItem(progress.taskId));
        tmp[progress.taskId] =
            task.copyWith(progress: progress.progress, status: progress.status);
        _tasks.value = tmp;
      }, onError: (ex, stacktrace) {
        print('exception: $ex');
        print('stacktrace: $stacktrace');
      });

      _resultSubscription = _uploader.result.listen((result) {
        print(
            'IN MAIN APP: ${result.taskId}, status: ${result.status}, statusCode: ${result.statusCode}, headers: ${result.headers}');

        var tmp = <String, UploadItem>{}..addAll(_tasks.value);
        tmp.putIfAbsent(result.taskId, () => UploadItem(result.taskId));
        tmp[result.taskId] = tmp[result.taskId]!
            .copyWith(status: result.status, response: result);

        _tasks.value = tmp;
      }, onError: (ex, stacktrace) {
        print('exception: $ex');
        print('stacktrace: $stacktrace');
      });

      return () {
        _progressSubscription?.cancel();
        _resultSubscription?.cancel();
        FlutterUploader().clearUploads();
      };
    }, []);

    return Scaffold(
        appBar: AppBar(
          title: Text('Request for item'),
        ),
        body: BlocBuilder<RequestItemBloc, RequestItemState>(
          builder: (context, state) => state.when(
              busy: () {
                if (_tasks.value.length > 0) {
                  bool flag = true;
                  bool iterated = false;
                  int iteratedIndex = 0;
                  _tasks.value.values.forEach((element) {
                    if (element.status != UploadTaskStatus.complete)
                      flag = false;
                    iteratedIndex = iteratedIndex + 1;

                    if (iteratedIndex == _tasks.value.values.length)
                      iterated = true;
                  });

                  if (flag && iterated) {
                    WidgetsBinding.instance!
                        .addPostFrameCallback((_) => showDialog(
                              context: context,
                              builder: (ctx) => AlertDialog(
                                title: Text("Request Submitted"),
                                content: Text(
                                    "Your request has been submitted. Our representative will call you shortly after request evaluation."),
                                actions: <Widget>[
                                  ElevatedButton(
                                    onPressed: () {
                                      Navigator.pushNamedAndRemoveUntil(
                                          context,
                                          Config.useDashboardEntry
                                              ? '/homeDashboard'
                                              : '/home',
                                          (route) => false);
                                    },
                                    child: Text("okay"),
                                  ),
                                ],
                              ),
                            ));
                  }

                  return ListView.separated(
                    padding: EdgeInsets.all(20.0),
                    itemCount: _tasks.value.values.length,
                    itemBuilder: (context, index) {
                      final item = _tasks.value.values.elementAt(index);
                      return UploadView1(item: item);
                    },
                    separatorBuilder: (context, index) {
                      return SizedBox();
                    },
                  );
                }
                return Center(
                  child: CircularProgressIndicator(),
                );
              },
              idle: () => _buildBody(
                    context: context,
                    items: _items,
                    remarkController: _remarkController,
                    franchiseId: franchieId,
                    itemNameController: _itemNameController,
                    itemQuantity: _itemQuantity,
                    key: _formKey,
                    uploader: _uploader,
                    imageList: _imageList,
                  )),
        ));
  }

  Widget _buildBody({
    required BuildContext context,
    required ValueNotifier<List<dynamic>> items,
    required TextEditingController remarkController,
    required int franchiseId,
    required TextEditingController itemNameController,
    required ValueNotifier<int> itemQuantity,
    required GlobalKey<FormState> key,
    required FlutterUploader uploader,
    required ValueNotifier<List<String>> imageList,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      mainAxisSize: MainAxisSize.max,
      children: <Widget>[
        Expanded(
          child: Container(
            color: Colors.blueGrey[100],
            child: SingleChildScrollView(
              child: Column(
                children: <Widget>[
                  // _buildMessageImage(),
                  _buildMyRequestsLink(context),
                  _buildAddItem(
                      context, key, itemNameController, itemQuantity, items),
                  _buildItemList(context, items),
                  _buildRemark(remarkController),
                  _imageUploader(uploader, imageList)
                ],
              ),
            ),
          ),
        ),
        Padding(
            padding: const EdgeInsets.all(8.0),
            child: ElevatedButton(
              child: Text('Submit'),
              onPressed: () {
                if (items.value.length > 0) {
                  context.read<RequestItemBloc>().add(RequestItemEvent.request(
                        items: items.value,
                        franchiseId: franchiseId,
                        remark: remarkController.text,
                        images:
                            imageList.value.length > 0 ? imageList.value : null,
                        uploader: uploader,
                      ));
                } else {
                  final snackBar = SnackBar(
                    backgroundColor: Colors.red,
                    content: Text('Add atleast one item'),
                  );
                  ScaffoldMessenger.of(context).showSnackBar(snackBar);
                }
              },
            )),
      ],
    );
  }

  Widget _buildMyRequestsLink(BuildContext context) {
    return Card(
        margin: const EdgeInsets.all(4.0),
        child: ListTile(
          dense: true,
          leading: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(
              Icons.list,
              color: Colors.red,
            ),
          ),
          title: Text("My Requests"),
          subtitle: Text(
            "View Requests",
            style: Theme.of(context).textTheme.caption,
          ),
          trailing: Icon(
            Icons.arrow_forward_ios,
            color: Colors.grey,
            size: 12,
          ),
          onTap: () {
            // Navigator.of(context).pushNamed(RouteMyRequests);
          },
        ));
  }

  Widget _buildAddItem(
    BuildContext context,
    GlobalKey<FormState> key,
    TextEditingController controller,
    ValueNotifier<int> itemQuantity,
    ValueNotifier<List<dynamic>> items,
  ) {
    return Card(
        margin: const EdgeInsets.all(4.0),
        child: Container(
          padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 8),
          child: Column(
            children: <Widget>[
              Form(
                key: key,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Expanded(
                      child: TextFormField(
                        controller: controller,
                        keyboardType: TextInputType.text,
                        validator: (value) {
                          if (value != null && value.isNotEmpty) {
                            return null;
                          }
                          return "Can't be empty";
                        },
                        decoration: InputDecoration(
                            labelText: "Item Name",
                            isDense: true,
                            border: OutlineInputBorder()),
                      ),
                    ),
                    SizedBox(width: 8),
                    _itemQuantityWidget(context, itemQuantity)
                  ],
                ),
              ),
              ElevatedButton(
                  onPressed: () {
                    if (key.currentState!.validate()) {
                      List itemList = items.value;
                      itemList.add({
                        "itemName": controller.text,
                        "quantity": itemQuantity.value
                      });
                      itemQuantity.value = 1;
                      controller.clear();
                      items.value = [];
                      items.value = itemList;
                    }
                  },
                  child: Text('Add Item'))
            ],
          ),
        ));
  }

  Widget _buildRemark(TextEditingController controller) {
    return Card(
      margin: const EdgeInsets.all(4.0),
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 8),
        child: Column(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  "Remark",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ],
            ),
            SizedBox(height: 8),
            TextFormField(
              controller: controller,
              textCapitalization: TextCapitalization.sentences,
              keyboardType: TextInputType.multiline,
              maxLines: 2,
              minLines: 2,
              decoration:
                  InputDecoration(isDense: true, border: OutlineInputBorder()),
            ),
          ],
        ),
      ),
    );
  }

  Widget _itemQuantityWidget(
      BuildContext context, ValueNotifier<int> itemQuantity) {
    var _buttonColor = Theme.of(context).primaryColor;
    return Container(
      width: 100,
      height: 50,
      decoration: BoxDecoration(
          border: Border.all(color: _buttonColor),
          borderRadius: BorderRadius.circular(10)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          GestureDetector(
            onTap: () {
              if (itemQuantity.value > 1) {
                itemQuantity.value = itemQuantity.value - 1;
              }
            },
            child: Container(
              color: Colors.transparent,
              padding:
                  const EdgeInsets.only(left: 8.0, right: 8, top: 8, bottom: 8),
              child: Icon(
                Icons.remove,
                size: 14,
                color: _buttonColor,
              ),
            ),
          ),
          Container(
//                                  width: 20,
            color: _buttonColor,
            padding: EdgeInsets.symmetric(horizontal: 8, vertical: 8),
            child: Text(
              "${itemQuantity.value}",
              style:
                  TextStyle(fontSize: 12, color: Theme.of(context).canvasColor),
            ),
          ),
          GestureDetector(
            onTap: () => itemQuantity.value = itemQuantity.value + 1,
            child: Container(
              color: Colors.transparent,
              padding:
                  const EdgeInsets.only(left: 8, right: 8, top: 8, bottom: 8),
              child: Icon(Icons.add, size: 14, color: _buttonColor),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildItemList(
      BuildContext context, ValueNotifier<List<dynamic>> items) {
    print(items);
    return items.value.isEmpty
        ? Container()
        : Card(
            margin: const EdgeInsets.all(4.0),
            child: Container(
              child: Column(
                children: <Widget>[
                  Container(
                    color: Colors.blue,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: <Widget>[
                          Expanded(
                              flex: 3,
                              child: Text(
                                "Item",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white),
                              )),
                          Expanded(
                              child: Text("Qty",
                                  textAlign: TextAlign.end,
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white))),
                          Container(
                            width: 32,
                            child: InkWell(
                              child: Center(
                                  child: Icon(
                                Icons.delete,
                                color: Colors.white,
                              )),
                              onTap: () {
                                showDialog<bool>(
                                  context: context,
                                  barrierDismissible: false,
                                  builder: (BuildContext dialogContext) {
                                    return AlertDialog(
                                      title: Text("Confirm"),
                                      content: Text(
                                          "Do you want to delete all items?"),
                                      actions: <Widget>[
                                        TextButton(
                                          child: Text("No"),
                                          onPressed: () {
                                            Navigator.of(dialogContext).pop();
                                          },
                                        ),
                                        TextButton(
                                          child: Text("Yes"),
                                          onPressed: () {
                                            items.value = [];
                                            Navigator.of(dialogContext).pop();
                                          },
                                        ),
                                      ],
                                    );
                                  },
                                );
                              },
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  ListView.separated(
                    physics: NeverScrollableScrollPhysics(),
                    itemBuilder: (_, int index) {
                      final item = items.value[index];
                      final slNo = index + 1;
                      return Container(
                        padding: const EdgeInsets.symmetric(vertical: 4.0),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              vertical: 4, horizontal: 8),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Expanded(flex: 3, child: Text(item["itemName"])),
                              Expanded(
                                  child: Text("${item['quantity']}",
                                      textAlign: TextAlign.end)),
                              Container(
                                width: 32,
                                child: InkWell(
                                  child: Center(
                                      child: Icon(
                                    Icons.delete,
                                    color: Colors.red,
                                  )),
                                  onTap: () {
                                    showDialog<bool>(
                                      context: context,
                                      barrierDismissible: false,
                                      builder: (BuildContext dialogContext) {
                                        return AlertDialog(
                                          title: Text("Confirm"),
                                          content: Text(
                                              "Do you want to delete ${items.value[index]['itemName']}?"),
                                          actions: <Widget>[
                                            TextButton(
                                              child: Text("No"),
                                              onPressed: () {
                                                Navigator.of(dialogContext)
                                                    .pop();
                                              },
                                            ),
                                            TextButton(
                                              child: Text("Yes"),
                                              onPressed: () {
                                                List itemsCopy = items.value;
                                                itemsCopy.removeAt(index);
                                                // items.value = itemsCopy;
                                                Navigator.of(dialogContext)
                                                    .pop();
                                                items.value = [];
                                                items.value = itemsCopy;
                                              },
                                            ),
                                          ],
                                        );
                                      },
                                    );
                                  },
                                ),
                              )
                            ],
                          ),
                        ),
                      );
                    },
                    itemCount: items.value.length,
                    shrinkWrap: true,
                    separatorBuilder: (BuildContext context, int index) {
                      return Divider(
                        height: 1,
                      );
                    },
                  ),
                ],
              ),
            ),
          );
  }

  Widget _imageUploader(
      FlutterUploader uploader, ValueNotifier<List<String>> imageList) {
    print('.........asdfasdfasdf..........');
    print(imageList);
    return Card(
      margin: const EdgeInsets.all(4.0),
      child: Container(
        padding: EdgeInsets.all(8),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  "Upload Image",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                ElevatedButton(
                    onPressed: () async {
                      //  var picture = await picker.getImage(source: ImageSource.camera);
                      var picture = await FilePicker.platform.pickFiles(
                        type: FileType.image,
                      );
                      if (picture != null)
                        _handleFileUpload(
                            picture.files.single.path!, uploader, imageList);
                    },
                    child: Text('Add Image'))
              ],
            ),
            SizedBox(height: 8),
            ListView.builder(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: imageList.value.length,
                itemBuilder: (context, index) => ListTile(
                      leading: Icon(Icons.image),
                      title: Text(imageList.value[index].split('/').last),
                      trailing: IconButton(
                        icon: Icon(Icons.cancel),
                        onPressed: () {
                          var imageListtemp = imageList.value;
                          imageListtemp.removeAt(index);
                          imageList.value = [];
                          imageList.value = imageListtemp;
                        },
                      ),
                    ))
          ],
        ),
      ),
    );
  }

  void _handleFileUpload(String path, FlutterUploader uploader,
      ValueNotifier<List<String>> imageList) async {
    var dir = await getTemporaryDirectory();
    var random = new Random();
    // final temptargetpath =
    //     dir.absolute.path + random.nextInt(100).toString() + 'temp.jpg';

    final filename = basename(path);
    final filenameWithoutExt = filename.split('.');
    filenameWithoutExt.removeLast();

    final temptargetpath =
        dir.absolute.path + filenameWithoutExt.join('.') + '.jpg';
    // 'image' +
    // (imageList.value.length + 1).toString() +
    // '.jpg';

    var result = await FlutterImageCompress.compressAndGetFile(
      path,
      temptargetpath,
      quality: 88,
      rotate: 180,
    );

    if (result != null) {
      print('.....a123123123123');
      print(result.absolute.path);
      List<String> temp = imageList.value;
      temp.add(result.absolute.path);
      imageList.value = [];
      imageList.value = temp;
    }
  }
}

class UploadView1 extends StatelessWidget {
  final UploadItem item;
  const UploadView1({Key? key, required this.item}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: Icon(Icons.upload),
        title: item.status == UploadTaskStatus.running
            ? Text('Uploading')
            : item.status == UploadTaskStatus.complete
                ? Text('Uploaded')
                : item.status == UploadTaskStatus.enqueued
                    ? Text('Upload Queued')
                    : item.status == UploadTaskStatus.undefined
                        ? Text('Upload initialized')
                        : item.status == UploadTaskStatus.canceled
                            ? Text('Upload Canceled')
                            : item.status == UploadTaskStatus.failed
                                ? Text('Upload Failed')
                                : Text('Initializing'),
        subtitle: item.status == UploadTaskStatus.running
            ? LinearProgressIndicator(value: item.progress!.toDouble() / 100)
            : SizedBox(),
      ),
    );
  }
}
