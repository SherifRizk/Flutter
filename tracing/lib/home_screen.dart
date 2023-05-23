import 'package:flutter/material.dart';
import 'package:flutter_osm_plugin/flutter_osm_plugin.dart';
// import 'location_page.dart';


class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  @override
  initState() {

  }
  List<GeoPoint> position = [];
  bool check = false;
  // late GeoPoint start;
  MapController controller = MapController(
    // initPosition: GeoPoint(latitude: 29.3634596, longitude:30.9041764),
    // areaLimit: BoundingBox(
    //   east: 48.2129,
    //   north: 30.5415,
    //   south: 45.817995,
    //   west:  5.9559113,
    // ),
    );


  Future<void> enableTracking({
    bool enableStopFollow = false,
    bool disableUserMarkerRotation = false,
  }) async {
    await controller.enableTracking(
      enableStopFollow: enableStopFollow,
      disableUserMarkerRotation: disableUserMarkerRotation,
    );
    // await controller.goToLocation(GeoPoint(latitude: 47.35387, longitude: 8.43609));
  }
  Future<GeoPoint> myLocation() async {
    return await controller.myLocation();
  }

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
          title: const Text(
            'Tracing'
          ),
        ),
      body: Column(
        children: [
          Expanded(
            child:OSMFlutter(
              controller: controller,
              trackMyPosition: true,
              initZoom: 18,
              minZoomLevel: 3,
              maxZoomLevel: 18,
              stepZoom: 1.0,
              userLocationMarker: UserLocationMaker(
                personMarker: const MarkerIcon(
                  icon: Icon(
                    Icons.location_history_rounded ,
                    color: Colors.red,
                    size: 48,
                  ),
                ),
                directionArrowMarker: const MarkerIcon(
                  icon: Icon(
                    Icons.double_arrow,
                    size: 48,
                  ),
                ),
              ),
              roadConfiguration: const RoadOption(
                roadColor: Colors.yellowAccent,
              ),
              markerOption: MarkerOption(
                  defaultMarker: const MarkerIcon(
                    icon: Icon(
                      Icons.person_pin_circle,
                      color: Colors.blue,
                      size: 56,
                    ),
                  )
              ),
              androidHotReloadSupport: true,
              onLocationChanged: (value){
                position.add(value);
                print(value);
              },
            ),
          ),
          // const SizedBox(height: 10,),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const SizedBox(width: 5,),
                MaterialButton(
                  onPressed:() async {
                    // await controller.setZoom(stepZoom: 2);
                    // or
                    await controller.zoomIn();
                  },
                  color: Colors.cyan,
                  child: const Text(
                      'Zoom IN'
                  ),
                ),
                const SizedBox(width: 5,),
                MaterialButton(
                  onPressed:() async {
                    await controller.zoomOut();
                  },
                  color: Colors.cyan,
                  child: const Text(
                      'Zoom Out'
                  ),
                ),
                const SizedBox(width: 5,),
                MaterialButton(
                  onPressed:() async {
                    check = true;
                    enableTracking();
                  },
                  color: Colors.cyan,
                  child: const Text(
                      'Tracing',
                  ),
                ),
                const SizedBox(width: 5,),
                MaterialButton(
                  onPressed:() async {
                    RoadInfo roadInfo = await controller.drawRoad(
                      position.first,
                      position.last,
                      roadType: RoadType.foot,
                      intersectPoint : position,
                      roadOption: const RoadOption(
                      roadWidth: 10,
                      roadColor: Colors.blue,
                      zoomInto: true,
                    ),
                    );
                    print("${roadInfo.distance}km");
                    print("${roadInfo.duration}sec");
                    print("${roadInfo.instructions}");
                  },
                  color: Colors.cyan,
                  child: const Text(
                      'Draw Road'
                  ),
                ),
                const SizedBox(width: 5,),
                MaterialButton(
                  onPressed:() async {
                    await controller.removeLastRoad();
                  },
                  color: Colors.cyan,
                  child: const Text(
                      'Delete Road'
                  ),
                ),
                const SizedBox(width: 5,),
                MaterialButton(
                  onPressed:() async {
                    await controller.disabledTracking();
                  },
                  color: Colors.cyan,
                  child: const Text(
                      'Disable tracking'
                  ),
                ),
                const SizedBox(width: 5,),
                MaterialButton(
                  onPressed:() async {
                    myLocation();
                  },
                  color: Colors.cyan,
                  child: const Text(
                      'My Location'
                  ),
                ),
                const SizedBox(width: 5,),
                // GestureDetector(
                //   onTap: (){
                //     Navigator.push(context, MaterialPageRoute(builder: (context){
                //       return const LocationPage();
                //     }));
                //   },
                //   child: const Text(
                //       'Location'
                //   ),
                // ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
// MapController controller = MapController.withUserPosition();

//   Position position = await Geolocator.getCurrentPosition(
//   desiredAccuracy: LocationAccuracy.high);
//
// // Get the latitude and longitude
//   double latitude = position.latitude;
//   double longitude = position.longitude;

// Future<void> trackLocation ()  async {
//   double location =  await controller.enableTracking();
//
// // }
// await controller.enableTracking(enableStopFollow:false,
// );

// showZoomController: true,
// isPicker: true,
// showContributorBadgeForOSM: true,
// staticPoints: [
//   StaticPositionGeoPoint(
//
//   ),
// ],
// onLocationChanged: (value) async{
//     print(value);
//     // position.add(value);
//     // print('*'*30);
//     // print(position);
//     // print('*'*30);
//     // List<GeoPoint> geoPoints = await controller.geopoints;
//     // print(geoPoints);
//
// },
// onMapIsReady: (value){
//   print(value);
// },
//
// onPressed:() async {
// GeoPoint start = await controller.myLocation();
// RoadInfo roadInfo = await controller.drawRoad(
// check ? start :GeoPoint(latitude: 29.3634786, longitude: 30.9042602),
// GeoPoint(latitude: 29.3633975, longitude: 30.9028895),
// roadType: RoadType.car,
// // intersectPoint : [ GeoPoint(latitude: 29.363896, longitude: 30.9043113), GeoPoint(latitude: 29.3631203, longitude: 30.9037197)],