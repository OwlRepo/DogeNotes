class NotesDataModel {
  String id;
  String dateCreated;
  String lastModified;
  String title;
  String notes;

  NotesDataModel(
      {this.id, this.dateCreated, this.lastModified, this.title, this.notes});

  NotesDataModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    dateCreated = json['dateCreated'];
    lastModified = json['lastModified'];
    title = json['title'];
    notes = json['notes'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['dateCreated'] = this.dateCreated;
    data['lastModified'] = this.lastModified;
    data['title'] = this.title;
    data['notes'] = this.notes;
    return data;
  }
}
