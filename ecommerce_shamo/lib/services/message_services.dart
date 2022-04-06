import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:ecommerce_shamo/models/message_model.dart';
import 'package:ecommerce_shamo/models/products_model.dart';
import 'package:ecommerce_shamo/models/user_model.dart';

class MessagesServices {
  FirebaseFirestore firestore = FirebaseFirestore.instance;

  Stream<List<MessageModel>> getMessagesByUserId({int userId}) {
    try {
      return firestore
          .collection('messages')
          .where(
            'userId',
            isEqualTo: userId,
          )
          .snapshots()
          .map(
        (QuerySnapshot list) {
          var results = list.docs.map<MessageModel>(
            (DocumentSnapshot message) {
              print(message.data());
              return MessageModel.fromJson(
                message.data(),
              );
            },
          ).toList();

          results.sort(
            (MessageModel a, MessageModel b) =>
                a.createdAt.compareTo(b.createdAt),
          );

          return results;
        },
      );
    } catch (e) {
      throw Exception(e);
    }
  }

  Future<void> addMessages(
      {UserModel user,
      bool isFormUser,
      String message,
      ProductsModel product}) async {
    try {
      firestore.collection('messages').add(
        {
          'userId': user.id,
          "userName": user.name,
          "userImg": user.profilePhotoUrl,
          'isFromUser': isFormUser,
          'message': message,
          'product': product is UnitializedProductModel ? {} : product.toJson(),
          'createdAt': DateTime.now().toString(),
          'updatedAt': DateTime.now().toString()
        },
      ).then(
        (value) => print('Pesan Berhasil Di kirim'),
      );
    } catch (e) {
      throw Exception('Pesan Gagal di Kirim');
    }
  }
}
