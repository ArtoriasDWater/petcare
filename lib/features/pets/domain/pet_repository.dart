import 'pet.dart';

abstract class PetRepository {
  Future<List<Pet>> getPets();
}
