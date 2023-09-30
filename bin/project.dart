import 'package:dio/dio.dart';

void main(List<String> arguments) async {
  var client = Dio();
  var url = await client.get('https://dummyjson.com/products');
  var data1 = url.data;
  double a = 0;
  Map<String, dynamic> dataprod = data1;
  List<dynamic> prods = dataprod['products'];
  for (dynamic p in prods) {
    a += p['rating'];
  }
  a = a / prods.length;
  print(a);
}
