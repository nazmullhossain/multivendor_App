// import 'dart:convert';
// import 'package:http/http.dart' as http;
//
// import '../model/store_model.dart';
//
// class Store{
//   Future<void> fetchData() async {
//     final response = await http.post(Uri.parse("http://democar.bevious.com/api/car/storeinstructions"));
//
//     if (response.statusCode == 200) {
//       // If server returns an OK response, parse the JSON
//       final Map<String, dynamic> data = json.decode(response.body);
//       return data;
//     } else {
//       // If the server did not return a 200 OK response,
//       // throw an exception.
//       // throw Exception('Failed to load data');
//     }
//   }
// }