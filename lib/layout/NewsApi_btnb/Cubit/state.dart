import 'package:untitled2/layout/NewsApi_btnb/NewsApp_Layout.dart';

abstract class NewsState{}

class InitialState extends NewsState {}
class Change_btnb extends NewsState {}
class NewsGetBusinessLoadingState extends NewsState{}
class NewsGetBusinessSuccefullyState extends NewsState{

}
class NewsGetBusinessErrorState extends NewsState{
  final String error;

  NewsGetBusinessErrorState(this.error);

}

class NewsGetSportsLoadingState extends NewsState{}
class NewsGetSportsSuccefullyState extends NewsState{

}
class NewsGetSportsErrorState extends NewsState{
  final String error;

  NewsGetSportsErrorState(this.error);

}

class NewsGetScienceLoadingState extends NewsState{}
class NewsGetScienceSuccefullyState extends NewsState{

}
class NewsGetScienceErrorState extends NewsState{
  final String error;

  NewsGetScienceErrorState(this.error);

}