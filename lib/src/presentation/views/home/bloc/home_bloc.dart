import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:portfolio/src/presentation/views/home/home_page.dart';

part 'home_event.dart';
part 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc() : super(HomeInitial()) {
    on<InitialEvent>(onInitialEvent);
  }

  onInitialEvent(InitialEvent event, Emitter<HomeState> emit) {



  }


}
