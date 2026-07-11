import 'package:core/widgets/empty_widget.dart';
import 'package:core/widgets/loading_widget.dart';
import 'package:flutter/material.dart';
import 'package:petcare/features/pets/domain/get_pets_use_case.dart';
import 'package:petcare/features/pets/data/pet_repository_impl.dart';
import 'package:petcare/features/pets/domain/pet.dart';

class PetsPageScreen extends StatelessWidget {
  PetsPageScreen({super.key});

  final GetPetsUseCase getPets = GetPetsUseCase(PetRepositoryImpl());

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    final text = Theme.of(context).textTheme;

    return Scaffold(
      appBar: AppBar(
        title: Text('Pets', style: text.headlineMedium),
        backgroundColor: colors.primary,
        foregroundColor: colors.onPrimary,
      ),
      body: FutureBuilder<List<Pet>>(
        future: getPets.getPets(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const LoadingWidget();
          }

          final pets = snapshot.data ?? [];

          if (pets.isEmpty) {
            return const EmptyWidget(
              icono: Icons.pets,
              titulo: 'No hay mascotas',
              descripcion: 'No existen mascotas registradas en el sistema.',
            );
          }

          return ListView.builder(
            itemCount: pets.length,
            itemBuilder: (context, index) {
              final pet = pets[index];
              return Card(
                margin: EdgeInsets.all(10),
                color: colors.surface,
                child: ListTile(
                  leading: Icon(Icons.pets, size: 40),
                  title: Text(pet.name, style: text.titleLarge),
                  subtitle: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Edad: ${pet.age} años', style: text.bodyMedium),
                      Text('Raza: ${pet.race}', style: text.bodyMedium),
                      Text('Peso: ${pet.weight} kg', style: text.bodyMedium),
                    ],
                  ),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
