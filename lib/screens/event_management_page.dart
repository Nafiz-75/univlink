import 'package:flutter/material.dart';
import 'package:univlink/data/event_data.dart';
import 'package:univlink/models/models/event_model.dart';
import 'drawer_navigation.dart';

class EventManagementPage extends StatefulWidget {
  @override
  _EventManagementPageState createState() => _EventManagementPageState();
}

class _EventManagementPageState extends State<EventManagementPage> {
  final titleController = TextEditingController();
  final descriptionController = TextEditingController();
  final dateController = TextEditingController();
  final timeController = TextEditingController();
  final locationController = TextEditingController();
  final organizerController = TextEditingController();

  bool enrollmentEnabled = false;

  void addEvent() {
    final newEvent = EventModel(
      id:
          DateTime.now().millisecondsSinceEpoch
              .toString(), // Temporary unique ID
      title: titleController.text,
      description: descriptionController.text,
      location: locationController.text,
      date:
          DateTime.tryParse('${dateController.text} ${timeController.text}') ??
          DateTime.now(),
      organizer: organizerController.text,
      isEnrollmentEnabled: enrollmentEnabled,
      goingUsers: [],
      interestedUsers: [],
      enrolledUsers: [],
    );
    class EventManagementPage extends StatefulWidget {
  @override
  _EventManagementPageState createState() => _EventManagementPageState();
}

class _EventManagementPageState extends State<EventManagementPage> {
  final titleController = TextEditingController();
  final descriptionController = TextEditingController();
  final dateController = TextEditingController();
  final timeController = TextEditingController();
  final locationController = TextEditingController();
  final organizerController = TextEditingController();

  bool enrollmentEnabled = false;

  void addEvent() {
    final newEvent = EventModel(
      id:
          DateTime.now().millisecondsSinceEpoch
              .toString(), // Temporary unique ID
      title: titleController.text,
      description: descriptionController.text,
      location: locationController.text,
      date:
          DateTime.tryParse('${dateController.text} ${timeController.text}') ??
          DateTime.now(),
      organizer: organizerController.text,
      isEnrollmentEnabled: enrollmentEnabled,
      goingUsers: [],
      interestedUsers: [],
      enrolledUsers: [],
    );

     eventList.add(newEvent);

    ScaffoldMessenger.of(
      context,
    ).showSnackBar(SnackBar(content: Text('Event Created!')));

    Navigator.pop(context);
  }

  Future<void> _selectDate() async {
    DateTime? picked = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2020),
      lastDate: DateTime(2030),
    );
    if (picked != null) {
      setState(() {
        dateController.text = "${picked.toLocal()}".split(' ')[0];
      });
    }
  }


