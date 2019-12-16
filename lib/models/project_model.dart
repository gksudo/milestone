class Project {
  String name;
  String date;
  String goal;

  Project(this.name, {this.date, this.goal});

  Map<String,dynamic> get map {
    return {
      "name": name,
      "date": date,
      "goal": goal,
    };
  }
}
