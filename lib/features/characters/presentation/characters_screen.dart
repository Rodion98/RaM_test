import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rick_and_morty_app/core/io_ui.dart';
import 'package:rick_and_morty_app/core/shared/app_spacing.dart';
import 'package:rick_and_morty_app/features/characters/presentation/bloc/characters_bloc.dart';
import 'package:rick_and_morty_app/features/characters/presentation/widgets/build_list_view.dart';

@RoutePage()
class CharactersScreen extends StatefulWidget {
  final String? status;
  final String? gender;
  const CharactersScreen({
    this.status,
    this.gender,
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
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('sadf')
          //  MyTextFiled(widget.gender, widget.status),
          ),
      body: BlocBuilder<CharactersBloc, CharactersState>(
        builder: (context, state) {
          final status = state.status;

          switch (status) {
            case StateStatus.initial:
              return const Center(child: CircularProgressIndicator());
            case StateStatus.loading:
              return const Center(child: CircularProgressIndicator());
            case StateStatus.error:
              return Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text('Произошла ошибка'),
                    if (state.failure != null) Text(state.failure!.message),
                    Gap.medium(),
                    ElevatedButton(
                      onPressed: () {
                        context
                            .read<CharactersBloc>()
                            .add(const CharactersEvent.fetch());
                      },
                      child: const Text('Повторить'),
                    ),
                  ],
                ),
              );
            case StateStatus.loaded:
              return (Padding(
                padding: AppProps.pH12,
                child: Column(
                  children: [
                    // _buildCountAndView(character.info.count!),
                    BuildListView(characters: state.characters)
                  ],
                ),
              ));
          }
        },
      ),
    );
  }

  // Row _buildCountAndView(int count) {
  //   List<SvgPicture> icons = [
  //     Assets.icons.tableView.svg(),
  //     Assets.icons.listView.svg(),
  //   ];
  //   return Row(
  //     children: [
  //       Text(
  //         '${t.allPerson}: $count ',
  //         style: AppTextStyle.allPersonsText10.copyWith(
  //           shadows: [
  //             BoxShadow(
  //               offset: Offset(3, 4),
  //               blurRadius: 4,
  //               spreadRadius: 0,
  //             ),
  //           ],
  //         ),
  //       ),
  //       Padding(
  //         padding: const EdgeInsets.only(right: 14),
  //         child: InkWell(
  //           onTap: () {
  //             setState(() {
  //               view = !view;
  //               print(view);
  //             });
  //           },
  //           child: view ? icons[1] : icons[0],
  //         ),
  //       )
  //     ],
  //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
  //   );
  // }
}
