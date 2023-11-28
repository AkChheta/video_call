import 'package:flutter/material.dart';
import 'package:video_call/key.dart';
import 'package:video_call/login.dart';
import 'package:zego_uikit_prebuilt_call/zego_uikit_prebuilt_call.dart';

class CallPage extends StatelessWidget {
  const CallPage({
    Key? key,
    required this.callID,
  }) : super(key: key);
  final String callID;

  @override
  Widget build(BuildContext context) {
    return ZegoUIKitPrebuiltCall(
      appID: MyAppKey.appId,
      appSign: MyAppKey.appSign,
      userID: LoginPage.userId,
      userName: LoginPage.name,
      callID: callID,
      config: ZegoUIKitPrebuiltCallConfig.groupVideoCall()
        ..onOnlySelfInRoom = (context) => Navigator.of(context).pop(),
    );
  }
}
