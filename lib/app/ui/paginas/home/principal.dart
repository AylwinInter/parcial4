import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:parcial4/app/ui/paginas/home/princilapcontroller.dart';

class PrincipalPage extends StatefulWidget {
  //const PrincipalPage({Key? key}) : super(key: key);

  @override
  State<PrincipalPage> createState() => _PrincipalPageState();
}

class _PrincipalPageState extends State<PrincipalPage> {
  final _controller = PrincipalController();

  void initState() {
    _controller.addListener(() {
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Principal'),
      ),
      body: Column(
        children: [
          SizedBox(
            width: 500,
            height: 500,
            child: GoogleMap(
              markers: _controller.markers,
              //onMapCreated: _controller.onMapCreated,
              initialCameraPosition: _controller.initialCameraPosition,
              //myLocationButtonEnabled: false,
              //mapType: MapType.hybrid,
              onTap: _controller.onTap,
              compassEnabled: true,
            ),
          ),
        ],
      ),
    );
  }
}
//pub upgrade flutter_lints