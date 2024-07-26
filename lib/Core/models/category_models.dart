import 'package:faker/faker.dart';
import 'dart:math';

class CategoryModels {
  final String image;
  final String title;
  final String description;
  final double price;
  final Sizes sizes;
  final Reviews reviews;

  CategoryModels({
    required this.image,
    required this.title,
    required this.description,
    required this.price,
    required this.sizes,
    required this.reviews,
  });
}

class Reviews {
  final String image;
  final String comment;
  final double rating;
  final String name;
  final DateTime dateTime;

  Reviews({
    required this.image,
    required this.comment,
    required this.rating,
    required this.name,
    required this.dateTime,
  });
}

enum Sizes {
  S,
  M,
  L,
}

List<CategoryModels> generateRandomCategories(int count) {
  final faker = Faker();
  final random = Random();

  List<CategoryModels> categories = [];

  for (int i = 0; i < count; i++) {
    final sizes = Sizes.values[random.nextInt(Sizes.values.length)];
    final reviews = Reviews(
      image: faker.image.image(random: true),
      comment: faker.lorem.sentence(),
      rating: random.nextDouble() * 5,
      name: faker.person.name(),
      dateTime: faker.date.dateTime(),
    );

    final category = CategoryModels(
      image: faker.image.image(),
      title: faker.lorem.word(),
      description: faker.lorem.sentences(3).join(' '),
      price: random.nextDouble() * 100,
      sizes: sizes,
      reviews: reviews,
    );

    categories.add(category);
  }

  return categories;
}
