class Notebook {
  String name;
  String goal;
  String date;
  List<Notebook> activities;

  Notebook(this.name, {this.goal='', this.date, this.activities});

  Map<String,dynamic> get map {
    return {
      "name": name,
      "goal": goal,
      "date": date,
      "activities": activities,
    };
  }
}
