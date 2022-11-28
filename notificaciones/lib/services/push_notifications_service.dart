

import 'dart:async';

import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';

class PushNotificationService{

  static FirebaseMessaging messaging = FirebaseMessaging.instance;
  static String? token;
  static StreamController<String> _messagestream = StreamController.broadcast();
  static Stream<String> get messagesStream => _messagestream.stream;


  static Future _backgroundHandler(RemoteMessage message) async{
    //print('onBackgound Handler ${message.messageId}');
    _messagestream.add(message.data['product'] ?? 'No title');
  }

  static Future _OnMessageHandler(RemoteMessage message) async{
    //print('onMessage Handler ${message.messageId}');
    _messagestream.add(message.data['product'] ?? 'No title');

  }

  static Future _OnMessageOpenApp(RemoteMessage message) async{
    //print('onMessageOpenApp Handler ${message.messageId}');
    _messagestream.add(message.data['product'] ?? 'No title');

  }


  static Future initializeApp() async{

    await Firebase.initializeApp();
    token = await FirebaseMessaging.instance.getToken();
    print('token:$token');


    FirebaseMessaging.onBackgroundMessage(_backgroundHandler);
    FirebaseMessaging.onMessage.listen(_OnMessageHandler);
    FirebaseMessaging.onMessageOpenedApp.listen(_OnMessageOpenApp);

  }

  static closeStreams(){
    _messagestream.close();
  }


}