import 'package:medapp/model/doctors/doctors_model.dart';

class ClinicModel {
  String? name;

  String? phoneNumber;
  String? workDays;
  String? workTime;
  String? location;
  String? website;
  String? img;
  Doctormodel? doctor;
  ClinicModel(
      {required this.name,
      required this.phoneNumber,
      required this.workDays,
      required this.workTime,
      required this.location,
      required this.website,
      required this.img,
      required this.doctor
      });
}
