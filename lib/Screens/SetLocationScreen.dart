import 'dart:async';
import 'package:awesome_snackbar_content/awesome_snackbar_content.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart' show rootBundle;
import 'package:flutter_google_places/flutter_google_places.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:google_maps_webservice/places.dart';
import 'package:google_api_headers/google_api_headers.dart';

class SetLocationScreen extends StatefulWidget {
  const SetLocationScreen({Key? key}) : super(key: key);

  @override
  State<SetLocationScreen> createState() => _SetLocationScreenState();
}
const kGoogleApiKey = 'AIzaSyB9qxumngK6RKtHBNPnnOhMLNKLjSX7upA';
final homeScaffoldKey = GlobalKey<ScaffoldState>();

class _SetLocationScreenState extends State<SetLocationScreen> {
  String? _darkMapStyle;
  String? _lightMapStyle;
  GoogleMapController? _googleMapController;
  final Completer<GoogleMapController> _controller = Completer();
  Set<Marker> markersList = {

  };
  final Mode _mode = Mode.overlay;
  static const _initialCameraPosition = CameraPosition(
    target: LatLng(29.980167, 31.308000),
    zoom: 11.5,
  );


  @override
  void initState() {
    super.initState();
    _loadMapStyles();
  }

  Future _setMapStyle() async {
    final controller = await _controller.future;
    final theme = WidgetsBinding.instance.window.platformBrightness;
    if (theme == Brightness.dark) {
      controller.setMapStyle(_darkMapStyle);
    } else {
      controller.setMapStyle(_lightMapStyle);
    }
  }



  @override
  void didChangePlatformBrightness() {
    setState(() {
      _setMapStyle();
    });
  }

  Future _loadMapStyles() async {
    _darkMapStyle  = await rootBundle.loadString('assets/Map Theme/DarkTheme.json');
    _lightMapStyle = await rootBundle.loadString('assets/Map Theme/StandardTheme.json');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: homeScaffoldKey,
      body: Stack(children: [
        GoogleMap(
          myLocationButtonEnabled: false,
          myLocationEnabled: false,
          markers: markersList,
          onMapCreated: (GoogleMapController controller){
            _controller.complete(controller);
          },
          initialCameraPosition: _initialCameraPosition,
          padding: EdgeInsets.zero,
        ),
        Padding(
          padding: EdgeInsets.only(
            left: 20,
            right: 20,
            top: 50,
          ),
          child: Align(
            alignment: Alignment.topCenter,
          child: TextFormField(
            onTap: _handlePressButton,
            decoration: InputDecoration(
              prefixIcon: Padding(
                padding: const EdgeInsetsDirectional.only(start: 12.0),
                child: IconTheme(
                    data: Theme.of(context).iconTheme,
                    child: Icon(Icons.search),
                ),
              ),
                filled: true,
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                  borderSide: BorderSide(color: Colors.transparent),
                ),
              fillColor: Theme.of(context).primaryColor,
              border: OutlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.black
                ),
                borderRadius: BorderRadius.circular(15)
              )
            ),
          )
          ),
        ),
      ]),
    );
  }

  Future<void> _handlePressButton() async {
    Prediction? p = await PlacesAutocomplete.show(
        context: context,
        apiKey: kGoogleApiKey,
        onError: onError,
        mode: _mode,
        language: 'en',
        strictbounds: false,
        types: [""],
        decoration: InputDecoration(
          hintText: 'Search',
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.transparent
            ),
            borderRadius: BorderRadius.circular(15),
          ),
        ),
        components: [Component(Component.country, "egy")]);
    displayPrediction(p!, homeScaffoldKey.currentState);
  }

  void onError(PlacesAutocompleteResponse response) {
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      elevation: 0,
      behavior: SnackBarBehavior.floating,
      backgroundColor: Colors.transparent,
      content: AwesomeSnackbarContent(
        title: 'Message',
        message: response.errorMessage!,
        contentType: ContentType.failure,
      ),
    ));
  }

  Future<void> displayPrediction(
      Prediction p, ScaffoldState? currentState) async {
    GoogleMapsPlaces places = GoogleMapsPlaces(
        apiKey: kGoogleApiKey,
        apiHeaders: await const GoogleApiHeaders().getHeaders());

    PlacesDetailsResponse detail = await places.getDetailsByPlaceId(p.placeId!);
    final lat = detail.result.geometry!.location.lat;
    final lng = detail.result.geometry!.location.lng;

    markersList.clear();
    markersList.add(Marker(
        markerId: MarkerId('0'),
        position: LatLng(lat, lng),
        infoWindow: InfoWindow(title: detail.result.name)));

    setState(() {
      _googleMapController!.animateCamera(CameraUpdate.newLatLngZoom(LatLng(lat, lng), 14));
    });
  }
}
