import 'homeModel.dart';

List<HomeModel> getHome() {
  List<HomeModel> home = new List();
  HomeModel homeModel = new HomeModel();

  homeModel.title = "Interview Q & A";
  homeModel.imgUrl =
      "https://firebasestorage.googleapis.com/v0/b/interview-s-mind.appspot.com/o/interviewpix%2Finterview1.jpg?alt=media&token=0bc34e99-107b-4389-9b47-ad83fdb6fa3d";

  home.add(homeModel);
  homeModel = new HomeModel();

  homeModel.title = "Job Search";
  homeModel.imgUrl =
      "https://firebasestorage.googleapis.com/v0/b/interview-s-mind.appspot.com/o/interviewpix%2Finterview2.jpg?alt=media&token=22c3a6be-7ddd-4d35-99dd-e543dbce1563";

  home.add(homeModel);
  homeModel = new HomeModel();

  homeModel.title = "CV builder";
  homeModel.imgUrl =
      "https://firebasestorage.googleapis.com/v0/b/interview-s-mind.appspot.com/o/interviewpix%2Fman-and-woman-sitting-beside-table-3205567%20(2).jpg?alt=media&token=e94fc16c-c3c8-4f9b-86c2-c7ef5ef19f33";

  home.add(homeModel);
  homeModel = new HomeModel();

  homeModel.title = "Dressing Etiquettes";
  homeModel.imgUrl =
      "https://firebasestorage.googleapis.com/v0/b/interview-s-mind.appspot.com/o/interviewpix%2Finterview4.jpg?alt=media&token=ce4b75bc-f1ee-4c64-8bab-8f0d87593a92";

  home.add(homeModel);
  homeModel = new HomeModel();

  homeModel.title = "Salary Negotiation";
  homeModel.imgUrl =
      "https://firebasestorage.googleapis.com/v0/b/interview-s-mind.appspot.com/o/interviewpix%2Finterview6.jpg?alt=media&token=c670fb99-7400-49da-9579-14389173f293";
  home.add(homeModel);
  homeModel = new HomeModel();

  homeModel.title = "Interview Tips";
  homeModel.imgUrl =
      "https://firebasestorage.googleapis.com/v0/b/interview-s-mind.appspot.com/o/interviewpix%2Finterview3.jpg?alt=media&token=c9c99aee-cefa-462e-be4b-8ee5b4b4fdac";

  home.add(homeModel);
  homeModel = new HomeModel();

  return home;
}
