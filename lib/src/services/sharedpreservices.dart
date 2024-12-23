import 'package:shared_preferences/shared_preferences.dart';

class SharedPreService{

  Future<void> savePage() async{
    try{
      SharedPreferences preferences = await SharedPreferences.getInstance();
      await preferences.setInt("page", 0);
    }catch(error){
      print("Error : $error");
    }
  }

  Future<int?> getPage() async{
    try{
      SharedPreferences preferences = await SharedPreferences.getInstance();
      final int? no = preferences.getInt('page');
      return no;
    }catch(error){
      print("Error : $error");
      return null;
    }
  }

  Future<void> updatePage({required int no}) async{
    try{
      SharedPreferences preferences = await SharedPreferences.getInstance();
      await preferences.setInt("page", no);
    }catch(error){
      print("Error : $error");
    }
  }


  Future<void> saveThemeSwitch() async{
    try{
      SharedPreferences preferences = await SharedPreferences.getInstance();
      await preferences.setBool("switch", false);
    }catch(error){
      print("Error : $error");
    }
  }

  Future<bool?> getValue() async{
    try{
      SharedPreferences preferences = await SharedPreferences.getInstance();
      final bool? value = preferences.getBool("switch");
      return value;
    }catch(error){
      print("Error : $error");
      return null;
    }
  }

  Future<void> updateSwitch({required bool value}) async{
    try{
      SharedPreferences preferences = await SharedPreferences.getInstance();
      await preferences.setBool("switch", value);
    }catch(error){
      print("Error : $error");
    }
  }

}