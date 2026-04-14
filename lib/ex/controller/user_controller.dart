import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class UserController extends GetxController {
  var name = 'Yaser'.obs;
  var email = 'y@gmail.com'.obs;
  final GetStorage _storage = GetStorage();
  static const _nameKey = 'name';
  static const _emailKey = 'name';

  String get getName => _storage.read(_nameKey) ?? 'yaser';

  String get getEmail => _storage.read(_emailKey) ?? 'y@gmail.com';

 Future<String> saveNameAndEmail() async{
    final name.value =await _storage.write(_nameKey, name.value)??;
    final saveEmail =await _storage.write(_emailKey, email.value);
  }

 Future<void> updateData(String newName, String newEmail)async {
    name.value = newName;
    email.value = newEmail;
    saveNameAndEmail();
  }

}
