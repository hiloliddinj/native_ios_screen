import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class IOSCompositionWidget extends StatelessWidget {
  const IOSCompositionWidget({super.key});

  @override
  Widget build(BuildContext context) {
    // This is used in the platform side to register the view.
    const String viewType = '<platform-view-type>';
    // Pass parameters to the platform side.
    final Map<String, dynamic> creationParams = <String, dynamic>{};

    return Scaffold(
      appBar: AppBar(title: const Text("Native"),),
      body: UiKitView(
        viewType: viewType,
        layoutDirection: TextDirection.ltr,
        creationParams: creationParams,
        creationParamsCodec: const StandardMessageCodec(),
      ),
    );
  }
}

// class TogetherWidget extends StatelessWidget {
//   const TogetherWidget({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     // This is used in the platform side to register the view.
//     const String viewType = '<platform-view-type>';
//     // Pass parameters to the platform side.
//     final Map<String, dynamic> creationParams = <String, dynamic>{};
//
//     switch (defaultTargetPlatform) {
//       case TargetPlatform.android:
//       // return widget on Android.
//       case TargetPlatform.iOS:
//       // return widget on iOS.
//       default:
//         throw UnsupportedError('Unsupported platform view');
//     }
//   }
// }