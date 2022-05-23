import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:parcial4/app/utils/mapa_style.dart';

class PrincipalController extends ChangeNotifier {
  Map<MarkerId, Marker> _markers = <MarkerId, Marker>{};

  final initialCameraPosition =
      const CameraPosition(target: LatLng(13.7013266, -89.2244339), zoom: 15);

  Set<Marker> get markers => _markers.values.toSet();

  PrincipalController();
  /*void onMapCreated(GoogleMapController controller) {
    controller.setMapStyle(MapStyle);
  }*/

  void onTap(LatLng position) {
    final markerId = MarkerId(_markers.length.toString());
    //print(position);
    final maker = Marker(markerId: markerId, position: position);

    _markers[markerId] = maker;
    notifyListeners();
  }
}
