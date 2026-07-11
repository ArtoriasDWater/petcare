import 'pet.dart';
import 'pet_repository.dart';

class GetPetsUseCase {
  final PetRepository petRepository;

  GetPetsUseCase(this.petRepository);

  Future<List<Pet>> getPets() async {
    return await petRepository.getPets();
  }
}
