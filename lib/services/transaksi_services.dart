import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:project/models/transaksi_models.dart';

class TransaksiServices {
  CollectionReference collectionReference =
      FirebaseFirestore.instance.collection("transaksi");

  Future<void> fetchTransaksi(TransaksiModels transaksi) async {
    try {
      collectionReference.add({
        "destination": transaksi.destination.toJson(),
        "amountTraveler": transaksi.amountTraveler,
        "seat": transaksi.seat,
        "insurance": transaksi.insurance,
        "refundable": transaksi.refundable,
        "vat": transaksi.vat,
        "price": transaksi.price,
        "grandTotal": transaksi.grandTotal,
      });
    } catch (e) {
      throw e.toString();
    }
  }
  Future<List<TransaksiModels>> transaksis() async {     
    try {
      // query snapshot di gunakan untuk memanggil data yang ada di dalam collection firebase,yang dimana nilai
      //collection nya ialah("destinations");
      QuerySnapshot querySnapshot = await collectionReference.get();
      List<TransaksiModels> transaksi = querySnapshot.docs.map((e) {
        return TransaksiModels.fromJson(
            e.id, e.data() as Map<String, dynamic>);
      }).toList();
      return transaksi;
    } catch (e) {
      throw e.toString();
    }
  }
}
