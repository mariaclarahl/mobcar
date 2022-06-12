import 'package:http/http.dart' as http;
import 'package:mobcar/models/marca.dart';

const baseUrl = "parallelum.com.br";

class ApiService {
  static Future getMarca() async {
    var params = {
      "itemsPerPage": "-1",
    };

    var url = Uri.https(baseUrl, "/fipe/api/v1/carros/marcas", params);

    return await http.get(url);
  }

  static Future getModelo(Marca marca) async {
    final String codigo = marca.codigo;
    var params = {
      "itemsPerPage": "-1",
    };

    var url = Uri.https(
        baseUrl, "/fipe/api/v1/carros/marcas/$codigo/modelos", params);

    return await http.get(url);
  }
}
