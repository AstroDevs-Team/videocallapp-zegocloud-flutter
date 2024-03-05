import 'dart:math';

import 'package:flutter/material.dart';
import 'package:zego_uikit_prebuilt_call/zego_uikit_prebuilt_call.dart';

String userID = Random().nextInt(1000000).toString();

class VideoCallPage extends StatelessWidget {
  const VideoCallPage({super.key, required this.callID});
  final String callID;

  @override
  Widget build(BuildContext context) {
    return ZegoUIKitPrebuiltCall(
      appID: YOUR_APP_ID,
      appSign: 'YOUR_APP_SIGN',
      callID: callID,
      userID: userID,
      userName: "username$userID",
      config: ZegoUIKitPrebuiltCallConfig.oneOnOneVideoCall(),
    );
  }
}
