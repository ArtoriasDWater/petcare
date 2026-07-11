import '../domain/pet.dart';
import '../domain/pet_repository.dart';

class PetRepositoryImpl implements PetRepository {
  @override
  Future<List<Pet>> getPets() async {
    await Future.delayed(const Duration(seconds: 2));

    return [
      Pet(id: 1, name: 'Tommy', age: 12, race: 'Chiguagua', weight: 20),
      Pet(id: 2, name: 'Shiro', age: 11, race: 'Gato', weight: 20),
      Pet(id: 3, name: 'Max', age: 8, race: 'Golden Retriever', weight: 30),
    ];
  }
}
