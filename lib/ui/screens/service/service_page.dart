import 'dart:convert';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:woodle/core/models/address/address_model.dart';
import 'package:woodle/core/models/service/service_model.dart';
import 'package:woodle/core/repository/repository.dart';
import 'package:woodle/core/services/storage.dart';
import 'package:woodle/core/settings/assets.dart';
import 'package:woodle/core/settings/config.dart';
import 'package:woodle/ui/screens/service/bloc/service_bloc.dart';
import 'package:woodle/ui/screens/service/bloc/service_request_bloc.dart';
import 'package:woodle/ui/screens/service/service_request_page.dart';
import 'package:woodle/ui/widgets/empty.dart';
import 'package:woodle/ui/widgets/failed.dart';
import 'package:woodle/ui/widgets/loading.dart';

class ServicePage extends HookWidget {
  final LocalStorage localStorage;
  const ServicePage({Key? key, required this.localStorage}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    AddressModel? _getAddress() {
      if (localStorage.get('currentAddress') != null) {
        Map<String, dynamic> currentAddressRaw =
            jsonDecode(localStorage.get('currentAddress') as String);
        return AddressModel.fromJson(currentAddressRaw);
      }
      return null;
    }

    AddressModel? address = _getAddress();

    useEffect(() {
      context.read<ServiceBloc>().add(ServiceEvent.fetchServices(
          address != null ? address.franchiseId : Config.locationId));
    }, []);

    return Scaffold(
      appBar: Config.useDashboardEntry ? null : AppBar(title: Text('Services')),
      body: Config.locationId != -1 || address != null
          ? _buildBloc(
              address != null ? address.franchiseId : Config.locationId)
          : EmptyView(
              icon: Icons.location_searching, title: 'No Location Selected.'),
    );
  }

  Widget _buildBloc(int franchiseId) {
    return BlocBuilder<ServiceBloc, ServiceState>(
      builder: (context, state) {
        return state.when(
            loading: () => LoadingView(),
            loaded: (data) => _buildPage(data),
            failed: (exceptions) => FailedView(
                exceptions: exceptions,
                onRetry: () => context
                    .read<ServiceBloc>()
                    .add(ServiceEvent.fetchServices(franchiseId))));
      },
    );
  }

  SliverGridDelegate _gridDelegate() =>
      SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2, childAspectRatio: 1);

  Widget _buildPage(List<ServiceModel> data) {
    return GridView.builder(
        shrinkWrap: true,
        gridDelegate: _gridDelegate(),
        padding: EdgeInsets.symmetric(horizontal: 4),
        itemBuilder: (context, index) => _buildItem(
            data: data[index],
            onTap: () => Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => BlocProvider(
                          create: (context) => ServiceRequestBloc(
                              repository: context.read<ApplicationRepository>(),
                              context: context),
                          child: ServiceRequestPage(
                            serviceDescription: data[index].description,
                            serviceName: data[index].serviceName,
                            serviceId: data[index].id,
                          ),
                        )))),
        itemCount: data.length);
  }

  Widget _buildItem({required ServiceModel data, void Function()? onTap}) {
    return Card(
      clipBehavior: Clip.antiAlias,
      margin: EdgeInsets.symmetric(horizontal: 4, vertical: 8),
      child: InkWell(
        onTap: onTap,
        child: Container(
          child: AspectRatio(
            aspectRatio: 1 / 1,
            child: CachedNetworkImage(
              imageUrl: data.imageUrl,
              fit: BoxFit.cover,
              placeholder: (_, __) =>
                  Center(child: Image.asset(Assets.appIcon)),
              errorWidget: (_, __, ___) => Center(child: Icon(Icons.error)),
            ),
          ),
        ),
      ),
    );
  }
}
