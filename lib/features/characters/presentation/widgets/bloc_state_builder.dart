import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rick_and_morty_app/core/error/failure.dart';
import 'package:rick_and_morty_app/core/shared/app_spacing.dart';
import 'package:rick_and_morty_app/features/favorites/presentation/bloc/favorites_bloc.dart'; // для Failure

typedef StateStatusSelector<T> = StateStatus Function(T state);
typedef FailureSelector<T> = Failure? Function(T state);
typedef DataIsEmpty<T> = bool Function(T state);
typedef RetryCallback = void Function();
typedef OnLoadedBuilder<T> = Widget Function(T state);

class BlocStateBuilder<B extends BlocBase<S>, S> extends StatelessWidget {
  final StateStatusSelector<S> statusSelector;
  final FailureSelector<S> failureSelector;
  final RetryCallback onRetry;
  final OnLoadedBuilder<S> onLoaded;
  final DataIsEmpty<S>? isEmpty;

  const BlocStateBuilder({
    Key? key,
    required this.statusSelector,
    required this.failureSelector,
    required this.onRetry,
    required this.onLoaded,
    this.isEmpty,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<B, S>(
      builder: (context, state) {
        final status = statusSelector(state);
        final failure = failureSelector(state);

        switch (status) {
          case StateStatus.initial:
          case StateStatus.loading:
            return const Center(child: CircularProgressIndicator());

          case StateStatus.error:
            return Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text('Произошла ошибка'),
                  if (failure != null) ...[
                    Gap.small(),
                    Text(failure.message),
                  ],
                  Gap.medium(),
                  ElevatedButton(
                    onPressed: onRetry,
                    child: const Text('Повторить'),
                  ),
                ],
              ),
            );

          case StateStatus.loaded:
            if (isEmpty != null && isEmpty!(state)) {
              return const Center(child: Text('Нет данных'));
            }
            return onLoaded(state);
        }
      },
    );
  }
}
