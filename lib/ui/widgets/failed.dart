import 'package:flutter/material.dart';
import 'package:woodle/core/network/network_exceptions/network_exceptions.dart';

class FailedView extends StatelessWidget {
  final NetworkExceptions exceptions;
  final void Function() onRetry;
  const FailedView({Key? key, required this.exceptions, required this.onRetry})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (exceptions is NoInternetConnection)
      return FailedViewBody(
        icon: Icons.wifi_off_sharp,
        title: 'Unstable Internet Connection',
        onTap: onRetry,
      );
    if (exceptions is ServerError)
      return FailedViewBody(
          icon: Icons.cloud_off, title: 'Server Down. Please come back later');
    if (exceptions is UnAuthorized) {}
    return FailedViewBody(
      icon: Icons.error,
      title: 'Something Went Wrong',
      onTap: onRetry,
    );
  }
}

class FailedViewBody extends StatelessWidget {
  final IconData icon;
  final String title;
  final void Function()? onTap;

  const FailedViewBody(
      {Key? key, required this.icon, required this.title, this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Wrap(
        crossAxisAlignment: WrapCrossAlignment.center,
        direction: Axis.vertical,
        spacing: 4,
        children: <Widget>[
          Icon(
            icon,
            color: Theme.of(context).accentColor.withOpacity(0.5),
            size: 80,
          ),
          Text(
            title,
            style: TextStyle(
              color: Theme.of(context).accentColor.withOpacity(0.5),
            ),
          ),
          onTap != null
              ? ElevatedButton(onPressed: onTap, child: Text('Retry'))
              : SizedBox()
        ],
      ),
    );
  }
}
