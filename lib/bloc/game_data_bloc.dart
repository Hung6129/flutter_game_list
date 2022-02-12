import 'package:bloc/bloc.dart';
import 'package:flutter_game_list/model/data_model.dart';
import 'package:meta/meta.dart';

part 'game_data_event.dart';
part 'game_data_state.dart';

class GameDataBloc extends Bloc<GameDataEvent, GameDataState> {
  GameDataBloc() : super(GameDataInitialState()) {
    on<GameDataEvent>((event, emit) {
       

    });
  }
}
