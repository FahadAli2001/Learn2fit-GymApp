import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:url_launcher/url_launcher.dart';

class ContactUsController extends GetxController{

  void instagramLaunch()async{
    try{
      final Uri _url = Uri.parse('https://www.instagram.com/learn2fitt/');

      if (!await launchUrl(_url,mode: LaunchMode.externalApplication)) {
        await launchUrl(_url);
        //print('Could not launch $_url');
      }
    }catch (e){
      print("eroorr"+e.toString());
    }

  }

  void linkedinLaunch()async{
    try{
      final Uri _url = Uri.parse('https://www.linkedin.com/company/learn2fitt/');

      if (!await launchUrl(_url,mode: LaunchMode.externalApplication)) {
        await launchUrl(_url);
        //print('Could not launch $_url');
      }
    }catch (e){
      print("eroorr"+e.toString());
    }

  }


  void facebookLaunch()async{
    try{
      final Uri _url = Uri.parse('https://www.facebook.com/people/Learn2Fitt/100085024424977/?mibextid=LQQJ4d');

      if (!await launchUrl(_url,mode: LaunchMode.externalApplication)) {
        await launchUrl(_url);
        //print('Could not launch $_url');
      }
    }catch (e){
      print("eroorr"+e.toString());
    }

  }



}