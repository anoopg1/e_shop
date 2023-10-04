import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_database/firebase_database.dart';

// Function to add a product to the user's wishlist
Future<void> addToWishlist(String productId) async {
  final User user = FirebaseAuth.instance.currentUser!;
  if (user != null) {
    final String userUid = user.uid;

    try {
      final DatabaseReference wishlistRef = FirebaseDatabase.instance
          .ref()
          .child('users')
          .child(userUid)
          .child('wishlist');

      // Check if the product is already in the wishlist to avoid duplicates
      final DataSnapshot snapshot =
          (await wishlistRef.child(productId).once()) as DataSnapshot;

      if (snapshot.value == null) {
        // The product is not in the wishlist, so add it
        await wishlistRef.child(productId).set(true);
        print('Product added to wishlist: $productId');
      } else {
        // The product is already in the wishlist
        print('Product already in wishlist: $productId');
      }
    } catch (e) {
      print('Error adding product to wishlist: $e');
    }
  } else {
    // User is not logged in
    print('User is not logged in.');
  }
}
