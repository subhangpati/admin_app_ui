import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:intl/intl.dart';

class QueryFirebaseMethod {
  upcomingEvents() {
    return FirebaseFirestore.instance
        .collection('events')
        .where('event_date_unformatted', isGreaterThan: DateTime.now())
        .get();
  }

  todaysEvents() {
    print(DateTime.now());
    return FirebaseFirestore.instance
        .collection('events')
        .where('event_date',
            isEqualTo: DateFormat('dd/MM/yyyy').format(DateTime.now()))
        .get();
  }

  getCurrentCustomerData(String uidOfSelectedCustomer) {
    return FirebaseFirestore.instance
        .collection('userData')
        .doc(uidOfSelectedCustomer)
        .snapshots();
  }

  getEventsHistory() {
    return FirebaseFirestore.instance
        .collection('events')
        .where('event_date_unformatted', isLessThan: DateTime.now())
        .orderBy('event_date_unformatted', descending: false)
        .get();
  }
}
