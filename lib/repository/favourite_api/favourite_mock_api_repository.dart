import 'package:bookapp/models/favourite/favouriteBooksModel.dart';
import 'package:bookapp/repository/favourite_api/favourite_repository.dart';

class FavouriteMockApiRepository implements FavouriteApiRepository {
  @override
  Future<FavouriteBooksModel> fetchFavouritBooks() async {
    await Future.delayed(const Duration(seconds: 3));

    dynamic responseData = {
      "status": true,
      "message": "Favourite books fetched successfully",
      "data": [
        {
          "id": 1,
          "thumbnail":
              "https://d1csarkz8obe9u.cloudfront.net/posterpreviews/kindle-book-cover-design-template-8486f1e0c30e357cdd3a070f2b81a6cd.jpg?ts=1695688233",
          "name": "The Art of Flutter",
          "uploaded_by_name": "Saqib",
          "uploader_image": "https://example.com/images/users/saqib.jpg",
          "verified": true,
          "date": "2025-01-12T10:30:00Z",
        },
        {
          "id": 2,
          "thumbnail":
              "https://www.designforwriters.com/wp-content/uploads/2017/10/design-for-writers-book-cover-tf-2-a-million-to-one.jpg",
          "name": "Mastering Dart",
          "uploaded_by_name": "Ali Khan",
          "uploader_image": "https://example.com/images/users/ali.jpg",
          "verified": false,
          "date": "2025-01-10T08:15:00Z",
        },
        {
          "id": 3,
          "thumbnail":
              "https://images.template.net/453953/6x9-Book-Cover-Template-edit-online.png",
          "name": "Clean Code in Flutter",
          "uploaded_by_name": "Ahmed Raza",
          "uploader_image": "https://example.com/images/users/ahmed.jpg",
          "verified": true,
          "date": "2025-01-08T14:50:00Z",
        },
        {
          "id": 4,
          "thumbnail":
              "https://www.writersdigest.com/uploads/MTcxMDY0NzcxMzIzNTY5NDEz/image-placeholder-title.jpg?format=auto&optimize=high&width=1440",
          "name": "Pro State Management",
          "uploaded_by_name": "Zara Malik",
          "uploader_image": "https://example.com/images/users/zara.jpg",
          "verified": true,
          "date": "2025-01-05T09:20:00Z",
        },
        {
          "id": 5,
          "thumbnail":
              "https://blog-cdn.reedsy.com/directories/gallery/273/large_8a59eaf52904643ec3b0ceb8a25e75b7.jpg",
          "name": "Dio & APIs In Depth",
          "uploaded_by_name": "Hamza Yousaf",
          "uploader_image": "https://example.com/images/users/hamza.jpg",
          "verified": false,
          "date": "2025-01-03T16:00:00Z",
        },
      ],
    };
    return FavouriteBooksModel.fromJson(responseData);
  }
}
