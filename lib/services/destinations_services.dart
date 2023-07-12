import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:project/models/destinations_models.dart';

class DestinationsServices {  
  CollectionReference collectionReference =
      FirebaseFirestore.instance.collection("destinations");

  Future<List<DestinationsModels>> fetchDestination() async {     
    try {
      // query snapshot di gunakan untuk memanggil data yang ada di dalam collection firebase,yang dimana nilai
      //collection nya ialah("destinations");
      QuerySnapshot querySnapshot = await collectionReference.get();
      List<DestinationsModels> destinations = querySnapshot.docs.map((e) {
        return DestinationsModels.fromJson(
            e.id, e.data() as Map<String, dynamic>);
      }).toList();
      return destinations;
    } catch (e) {
      throw e.toString();
    }
  }
}
