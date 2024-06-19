import 'package:flutter/material.dart';
import 'package:zego_uikit_prebuilt_call/zego_uikit_prebuilt_call.dart';
import 'dart:math' as math;

class CallPage extends StatelessWidget {
  final String callID;

  CallPage({super.key, required this.callID});

  final String localUserID = math.Random().nextInt(10000).toString();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: ZegoUIKitPrebuiltCall(
        appID: 798491662,
        appSign:
            'cd825bc7aaaa071ec053896acd051ac0f57c677dda24f858032e14c056909b4a',
        callID: callID,
        userID: localUserID,
        userName: "user_$localUserID",
        config: ZegoUIKitPrebuiltCallConfig.oneOnOneVideoCall()..advanceConfigs
          

      ),
    );
  }
}

// import 'dart:math';

// import 'package:flutter/material.dart';
// import 'package:vac_app/screens/homepage.dart';
// import 'package:vac_app/utils.dart';
// import 'package:zego_uikit_prebuilt_call/zego_uikit_prebuilt_call.dart';

// class PrebuiltCallPage extends StatefulWidget {
//   const PrebuiltCallPage({Key? key, required this.callID}) : super(key: key);
//   final String callID;

//   @override
//   State<StatefulWidget> createState() => PrebuiltCallPageState();
// }

// class PrebuiltCallPageState extends State<PrebuiltCallPage> {
//   String userID = Random().nextInt(10000).toString();

//   var id;
//   @override
//   void initState() {
//     super.initState();
//     getUniqueUserId().then((value) {
//       setState(() {
//         id = value;
//       });
//     });
//   }
  

//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//       child: ZegoUIKitPrebuiltCall(
//         onDispose: () => const Homepage(),
//           appID: 798491662,
//           appSign:
//               'cd825bc7aaaa071ec053896acd051ac0f57c677dda24f858032e14c056909b4a',
//           userID: userID,
//           userName: "$userID test user",
//           callID: "call_id",
//           config: ZegoUIKitPrebuiltCallConfig.oneOnOneVideoCall()
            
          
//           ),
//     );
//   }
// }
