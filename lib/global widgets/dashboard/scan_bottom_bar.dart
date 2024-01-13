
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ScanBottomBar extends StatelessWidget {

  final Function()? onSwitchCam;
  final VoidCallback? onCapture;
  final Function()? onOpenAlbum;

  const ScanBottomBar({Key ?key,
    required this.onSwitchCam,
    required this.onCapture,
    required this.onOpenAlbum
  }) :  assert(onOpenAlbum != null),
        assert(onCapture != null),
        assert(onSwitchCam != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    final double width =  MediaQuery.of(context).size.width;
    return Container(
      width: width,
      height: width*0.2,
      color: const Color(0xFF402ca3),
      padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 5.0),
      child: Row(
        children: [
          Expanded(
              child: IconButton(
                  onPressed: onSwitchCam,
                  iconSize: 36.0,
                  padding: const EdgeInsets.all(3.0),
                  color: const Color(0xFF7958ef),
                  icon: const Icon(
                    Icons.switch_camera,
                    color: Colors.white,
                  )
              )
          ),
          Expanded(
            child: GestureDetector(
              onTap: onCapture,
              child: Container(
                  padding: const EdgeInsets.all(3.0),
                  margin:const EdgeInsets.all(4.0),
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: const Color(0xFF7958ef),
                      border: Border.all(color: Colors.white, width: 2.0),
                      boxShadow: const [
                        BoxShadow(
                            color: Color(0xFFd8d7da),
                            spreadRadius: 1,
                            offset: Offset(0.2, 0.2)),
                      ]
                  ),
                  clipBehavior: Clip.antiAlias,
                  child: const CircleAvatar(
                    backgroundColor: Color(0xFFFFFFFF),
                    child: Icon(FontAwesomeIcons.qrcode, size: 26,),
                    maxRadius: 32.0,
                  )
              ),
            ),
          ),
          Expanded(
              child: IconButton(
                  onPressed: onOpenAlbum,
                  iconSize: 32.0,
                  padding: const EdgeInsets.all(3.0),
                  color: const Color(0xFF7958ef),
                  icon: const Icon(
                    FontAwesomeIcons.solidImage,
                    color: Colors.white,
                  )
              )
          )
        ],
      ),
    );
  }
}
