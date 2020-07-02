import 'package:Sepetim/domain/auth/i_auth_facade.dart';
import 'package:Sepetim/domain/core/errors.dart';
import 'package:Sepetim/injection.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

extension FirestoreX on Firestore {
  Future<DocumentReference> userDocument() async {
    final userOption = await getIt<IAuthFacade>().getSignedUser();
    final user = userOption.getOrElse(() => throw NotAuthenticatedError());

    return Firestore.instance
        .collection('users')
        .document(user.id.getOrCrash());
  }
}

extension DocumentReferenceX on DocumentReference {
  CollectionReference get categoryCollection => collection('categories');
  CollectionReference get groupCollection => collection('groups');
  CollectionReference get itemCollection => collection('items');
}
