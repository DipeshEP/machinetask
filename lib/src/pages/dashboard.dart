import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:machine_test_accruon/constants/color.dart';
import 'package:machine_test_accruon/src/pages/display_image.dart';

class DashBoard extends StatefulWidget {
  const DashBoard({super.key, required this.camera});
  final CameraDescription camera;

  @override
  State<DashBoard> createState() => _DashBoardState();
}

class _DashBoardState extends State<DashBoard> {
  late CameraController _controller;
  late Future<void> _initializeControllerFuture;
  @override
  void initState() {
    super.initState();

    _controller = CameraController(
      widget.camera,
      ResolutionPreset.medium,
    );

    _initializeControllerFuture = _controller.initialize();
  }

  @override
  void dispose() {
    // Dispose of the controller when the widget is disposed.
    _controller.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return  SafeArea(
      child: Scaffold(
        backgroundColor: Colour.babyBlue,
        body:FutureBuilder<void>(
          future: _initializeControllerFuture,
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.done) {
              return CameraPreview(_controller);
            } else {
              return const Center(child: CircularProgressIndicator());
            }
          },
        ),
        // Column(
        //   children: [
        //     Padding(
        //       padding: const EdgeInsets.all(10.0),
        //       child: Container(
        //         height: MediaQuery.of(context).size.height*.5,
        //
        //         decoration: BoxDecoration(
        //           border: Border.all()
        //         ),
        //         child: Column(
        //           mainAxisAlignment: MainAxisAlignment.center,
        //           crossAxisAlignment: CrossAxisAlignment.center,
        //           children: [
        //             SizedBox(
        //               width: MediaQuery.of(context).size.width,
        //               height: 200,
        //             ),
        //           ],
        //         ),
        //       ),
        //     )
        //   ],
        // ),

        floatingActionButton: FloatingActionButton(
          onPressed: () async {

            try {
              await _initializeControllerFuture;


              final image = await _controller.takePicture();

              if (!mounted) return;

              await Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => DisplayPictureScreen(

                    imagePath: image.path,
                  ),
                ),
              );
            } catch (e) {
              print(e);
            }
          },
          child: const Icon(Icons.camera_alt),
        ),
      ),
    );
  }
}
