import 'dart:io';
import 'dart:convert';

import 'package:image_picker/image_picker.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class YourWidget extends StatelessWidget {
  Future<String?> sendRequest() async {
    var request = http.MultipartRequest('POST', Uri.parse('http://democar.bevious.com/api/car/storeinstructions'));
    request.fields.addAll({
      'car_name': 'AGH30-0343307',
      'staff_name': 'Hakimi',
      'company_name': 'SURIA MOTORSPORTS SDN BHD',
      'classification': 'individual',
      'sales_type': 'loan',
      'c_name': 'test',
      'ic_br_no': '123',
      'hp_no': '123',
      'booking_fee': '23',
      'multiple_amount[]': '30',
      'multiple_amount[]': '78',
      'multiple_amount_ramark[]': 'test5',
      'multiple_amount_ramark[]': 'test6'
    });

    http.StreamedResponse response = await request.send();
    // print(response.stream.bytesToString());

    if (response.statusCode == 200) {
      return await response.stream.bytesToString();

    } else {
      return response.reasonPhrase;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('API Response'),
      ),
      body: FutureBuilder(
        future: sendRequest(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            return Center(child: Text('Error: ${snapshot.error}'));
          } else {
            // Parse the JSON response if it's a JSON response
            var jsonResponse;
            try {
              jsonResponse = json.decode(snapshot.data!);
            } catch (e) {
              // If it's not a JSON response, handle accordingly
              return Center(child: Text('Non-JSON Response: ${snapshot.data}'));
            }

            // Use the parsed response in your UI
            return Center(child: Text('API Response: ${jsonResponse["data"]}'));
          }
        },
      ),
    );
  }
}