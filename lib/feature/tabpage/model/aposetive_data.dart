class AposetiveData{
  final String name;
  final String dateofBirth;
  final String profession;
  final String dristict;
  AposetiveData(this.name, {required this.dateofBirth,required this.dristict,required this.profession});
}
List<AposetiveData>apositiveList =[
  AposetiveData('Rafat', dateofBirth: "03/05/2002", dristict: "Thakurgoan", profession: "Studen"),
  AposetiveData('Hasan', dateofBirth: "03/05/2002", dristict: "Dinajpur", profession: "Farmer"),
  AposetiveData('Salim', dateofBirth: "03/05/2002", dristict: "Rangpur", profession: "Teacher"),
  AposetiveData('Limon', dateofBirth: "03/05/2002", dristict: "Phoncogor", profession: "Barber"),
  AposetiveData('Ujool', dateofBirth: "03/05/2002", dristict: "Lalmonirhat", profession: "Cobbler"),
];