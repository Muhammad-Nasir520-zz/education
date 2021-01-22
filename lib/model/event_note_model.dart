




class EventNoteModel
{
  String image;
  String eventNoteText;
  EventNoteModel({this.image,this.eventNoteText});
}

List<EventNoteModel> eventNoteList=[
  EventNoteModel(
    image: "assets/eventnoteimages/addnote.svg",
    eventNoteText: "Add Event"
  ),
  EventNoteModel(
      image: "assets/eventnoteimages/addeventnote.svg",
      eventNoteText: "Add Event Note"
  ),
  EventNoteModel(
      image: "assets/eventnoteimages/quicknote.svg",
      eventNoteText: "Quick Note"
  ),
  EventNoteModel(
      image: "assets/eventnoteimages/notebooks.svg",
      eventNoteText: "NoteBooks"
  ),
  EventNoteModel(
      image: "assets/eventnoteimages/adddos.svg",
      eventNoteText: "Add 2 do's"
  ),
  EventNoteModel(
      image: "assets/eventnoteimages/setting.svg",
      eventNoteText: "Edit"
  ),

];