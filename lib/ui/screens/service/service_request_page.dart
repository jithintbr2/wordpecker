import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:woodle/core/models/address/address_model.dart';
import 'package:woodle/core/services/storage.dart';
import 'package:woodle/ui/screens/service/bloc/service_request_bloc.dart';

final _key = GlobalKey<FormState>();

class ServiceRequestPage extends HookWidget {
  final String serviceName;
  final String serviceDescription;
  final int serviceId;
  const ServiceRequestPage({
    Key? key,
    required this.serviceName,
    required this.serviceId,
    required this.serviceDescription,
  }) : super(key: key);

  String getYmdFromDmy(String dmy) {
    if (dmy.isEmpty) return dmy;
    final split = dmy.split("-");
    return "${split[2]}-${split[1]}-${split[0]}";
  }

  @override
  Widget build(BuildContext context) {
    final _jobTitleController = useTextEditingController(text: '');
    final _jobDescriptionController = useTextEditingController(text: '');
    final _preferedDate = useTextEditingController(
        text: DateTime.now().toString().substring(0, 10));
    final _time =
        useTextEditingController(text: TimeOfDay.now().format(context));

    LocalStorage localStorage = LocalStorage();

    AddressModel? _getAddress() {
      if (localStorage.get('currentAddress') != null) {
        Map<String, dynamic> currentAddressRaw =
            jsonDecode(localStorage.get('currentAddress') as String);
        return AddressModel.fromJson(currentAddressRaw);
      }
      return null;
    }

    AddressModel? _address = _getAddress();

    return Scaffold(
        appBar: AppBar(title: Text(serviceName)),
        body: Form(
          key: _key,
          child: ListView(
            padding: EdgeInsets.all(10),
            children: [
              SizedBox(height: 10),
              Text(serviceDescription),
              Divider(),
              TextFormField(
                controller: _jobTitleController,
                keyboardType: TextInputType.text,
                // autofocus: true,
                decoration: InputDecoration(
                  labelText: 'Job Title',
                  isDense: true,
                  border: OutlineInputBorder(),
                ),
                validator: (value) {
                  if (value != null && value.isNotEmpty) return null;
                  return "Can't be empty";
                },
              ),
              SizedBox(height: 10),
              TextFormField(
                controller: _jobDescriptionController,
                maxLines: 3,
                minLines: 3,
                decoration: InputDecoration(
                  labelText: 'Job Description',
                  isDense: true,
                  border: OutlineInputBorder(),
                ),
                validator: (value) {
                  if (value != null && value.isNotEmpty) return null;
                  return "Can't be empty";
                },
              ),
              SizedBox(height: 10),
              TextField(
                onTap: () => showDatePicker(
                        context: context,
                        initialDate: DateTime.now(),
                        firstDate: DateTime.now(),
                        lastDate: DateTime(2100))
                    .then((selectedDate) => _preferedDate.text =
                        selectedDate.toString().substring(0, 10)),
                readOnly: true,
                controller: _preferedDate,
                decoration: InputDecoration(
                    labelText: 'Preferable Date', border: OutlineInputBorder()),
              ),
              SizedBox(height: 10),
              TextField(
                onTap: () => showTimePicker(
                        context: context, initialTime: TimeOfDay.now())
                    .then((selectedTime) =>
                        _time.text = selectedTime!.format(context)),
                controller: _time,
                readOnly: true,
                decoration: InputDecoration(
                    labelText: 'Time', border: OutlineInputBorder()),
              ),
              SizedBox(height: 20),
              BlocBuilder<ServiceRequestBloc, ServiceRequestState>(
                  builder: (context, state) {
                return state.when(
                    loading: () => Center(
                          child: SizedBox(
                            width: 30,
                            height: 30,
                            child: CircularProgressIndicator(),
                          ),
                        ),
                    idle: () => ElevatedButton(
                        onPressed: () {
                          if (_key.currentState!.validate()) {
                            context.read<ServiceRequestBloc>().add(
                                ServiceRequestEvent.started(
                                    _address!.franchiseId,
                                    serviceId,
                                    _jobTitleController.text,
                                    _jobDescriptionController.text,
                                    getYmdFromDmy(_preferedDate.text),
                                    _time.text));
                          }
                        },
                        child: Text('Submit')));
              }),
            ],
          ),
        ));
  }
}
