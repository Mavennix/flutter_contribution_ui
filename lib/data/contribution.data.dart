class Event {
  String name;
  String date;
  String type;
  String input;

  Event({
    this.name,
    this.date,
    this.input,
    this.type,
  });
}

List<Event> contributions = [
  Event(
      name: 'Appreciation',
      date:
          'https://lastfm.freetls.fastly.net/i/u/ar0/ffb6d49a3f1848418cc30fc3ab7c04c7.jpg',
      type: 'contribution'),
  Event(
      name: 'A good time',
      date:
          'https://www.naijaloaded.com.ng/wp-content/uploads/2019/11/agt.jpeg',
      type: 'loan'),
];
