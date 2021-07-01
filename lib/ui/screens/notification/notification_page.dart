import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:woodle/core/models/notification/notification_model.dart';
import 'package:woodle/ui/screens/notification/bloc/notification_bloc.dart';
import 'package:woodle/ui/screens/notification/widgets/notification_tile.dart';
import 'package:woodle/ui/widgets/empty.dart';
import 'package:woodle/ui/widgets/loading.dart';

class NotificationPage extends HookWidget {
  const NotificationPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    useEffect(() {
      context.read<NotificationBloc>().add(NotificationEvent.fetchData());
    }, []);
    return Scaffold(
        appBar: AppBar(title: Text('Notifications')),
        body: BlocBuilder<NotificationBloc, NotificationState>(
            builder: (context, state) => state.when(
                loading: () => LoadingView(),
                loaded: (data) => _buildPage(data))));
  }

  Widget _buildPage(List<NotificationModel> data) {
    if (data.isNotEmpty)
      return ListView.separated(
          itemBuilder: (context, index) => NotificationTile(
              isRead: data[index].isRead,
              title: data[index].title ?? '',
              subtitle: data[index].message ?? '',
              date: data[index].sentDate,
              time: data[index].sentTime,
              onTap: () {}),
          separatorBuilder: (_, __) => Divider(),
          itemCount: data.length);
    return EmptyView(icon: Icons.notifications_off, title: "No notificaitons");
  }
}
