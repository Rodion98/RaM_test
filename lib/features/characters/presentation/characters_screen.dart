import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rick_and_morty_app/core/io_ui.dart';
import 'package:rick_and_morty_app/features/characters/presentation/bloc/characters_bloc.dart';
import 'package:rick_and_morty_app/features/characters/presentation/widgets/bloc_state_builder.dart';
import 'package:rick_and_morty_app/features/characters/presentation/widgets/build_list_view.dart';
import 'package:rick_and_morty_app/features/favorites/presentation/bloc/favorites_bloc.dart';

@RoutePage()
class CharactersScreen extends StatefulWidget {
  const CharactersScreen({
    super.key,
  });

  @override
  State<CharactersScreen> createState() => _CharactersScreenState();
}

class _CharactersScreenState extends State<CharactersScreen> {
  @override
  void initState() {
    super.initState();

    context.read<CharactersBloc>().add(
          const CharactersEvent.fetch(),
        );
    context.read<FavoritesBloc>().add(
          const FavoritesEvent.fetchFavoritesIds(),
        );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(title: Text('sadf')
      //     //  MyTextFiled(widget.gender, widget.status),
      //     ),
      body: BlocStateBuilder<CharactersBloc, CharactersState>(
        statusSelector: (state) => state.status,
        failureSelector: (state) => state.failure,
        onRetry: () {
          context.read<CharactersBloc>().add(const CharactersEvent.fetch());
        },
        isEmpty: (state) => state.characters.isEmpty,
        onLoaded: (state) => Padding(
          padding: AppProps.pH12,
          child: BuildListView(characters: state.characters),
        ),
      ),
    );
  }
}
