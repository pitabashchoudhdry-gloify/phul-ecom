//import 'package:http/http.dart'as http;
import 'package:phul_ecom_partner/data/static_data/static_data.dart';

class TopSellerService {
  Future<List<TopSeller>> fetchTopSellerList() async {
    await Future.delayed(const Duration(seconds: 5), () {});

    return StaticData.topSellers;
  }
}
