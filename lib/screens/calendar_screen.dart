// lib/screens/calendar_screen.dart
import 'package:flutter/material.dart';
import '../models/event.dart';

class CalendarScreen extends StatefulWidget {
  const CalendarScreen({super.key});

  @override
  State<CalendarScreen> createState() => _CalendarScreenState();
}

class _CalendarScreenState extends State<CalendarScreen> {
  DateTime _selectedDate = DateTime.now();

  // Simulazione eventi
  final List<Event> _events = [
    Event(title: 'Dentist Appointment', date: DateTime.now()),
    Event(title: 'Team Meeting', date: DateTime.now().add(const Duration(days: 1))),
  ];

  @override
  Widget build(BuildContext context) {
    final eventsForDay = _events.where(
      (e) =>
          e.date.year == _selectedDate.year &&
          e.date.month == _selectedDate.month &&
          e.date.day == _selectedDate.day,
    );

    return Scaffold(
      appBar: AppBar(title: const Text('My Calendar')),
      body: Column(
        children: [
          // Semplice riga con la data selezionata
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  icon: const Icon(Icons.chevron_left),
                  onPressed: () {
                    setState(() {
                      _selectedDate = _selectedDate.subtract(const Duration(days: 1));
                    });
                  },
                ),
                Text(
                  '${_selectedDate.day}/${_selectedDate.month}/${_selectedDate.year}',
                  style: const TextStyle(fontSize: 18),
                ),
                IconButton(
                  icon: const Icon(Icons.chevron_right),
                  onPressed: () {
                    setState(() {
                      _selectedDate = _selectedDate.add(const Duration(days: 1));
                    });
                  },
                ),
              ],
            ),
          ),

          // Lista eventi
          Expanded(
            child: eventsForDay.isEmpty
                ? const Center(child: Text('No events'))
                : ListView(
                    children: eventsForDay.map((event) {
                      return ListTile(
                        title: Text(event.title),
                        subtitle: Text(event.date.toIso8601String()),
                      );
                    }).toList(),
                  ),
          ),
        ],
      ),

      // Pulsante per aggiungere un evento
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // TODO: aggiungere schermata o popup per creare evento
          print('Aggiungi evento');
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
