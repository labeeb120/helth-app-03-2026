import 'package:flutter/material.dart';
import 'package:health_app/features/doctor/data/responses/patient_response.dart';
// import 'package:flutter/widgets.dart';
// import 'package:health_app/features/doctor/domain/patient.dart';

class PatientFloatingButton extends StatefulWidget {
  const PatientFloatingButton({super.key});

  @override
  State<PatientFloatingButton> createState() => _PatientFloatingButtonState();
}

class _PatientFloatingButtonState extends State<PatientFloatingButton> {
  bool isElevated = false;
  @override
  Widget build(BuildContext context) {
    if (isElevated) {
      return Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          spacing: 10,
          children: [
            ElevatedButton(onPressed: () {}, child: Text('Add Medical Record')),
            ElevatedButton(onPressed: () {}, child: Text('Add Prescription')),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  isElevated = false;
                });
              },
              child: Text('Cancel'),
            ),
          ],
        ),
      );
    }
    return FloatingActionButton(
      onPressed: () {
        setState(() {
          isElevated = true;
        });
      },
      child: Icon(Icons.add),
    );
  }
}

class PatientPage extends StatelessWidget {
  const PatientPage({super.key, required this.patient});
  final Patient patient;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // body: ,
      appBar: AppBar(title: Text(patient.fullName)),
      // floatingActionButton: Column(
      //   mainAxisAlignment: MainAxisAlignment.end,
      //   children: [ElevatedButton(onPressed: () {}, child: Text('Medical'))],
      // ),
      floatingActionButton: PatientFloatingButton(),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            spacing: 10,
            children: [
              Filed1(name: 'Full name', value: patient.fullName),
              Filed1(
                name: 'Date of birth',
                value: patient.dateOfBirth.toString(),
              ),
              Filed1(
                name: 'gender',
                value: patient.gender == 1 ? 'Male' : 'Female',
              ),
              Filed1(
                name: 'blood Type',
                value: patient.bloodType == 1 ? 'Male' : 'Female',
              ),
              Filed1(name: 'weight', value: patient.weight.toString()),
              Filed1(name: 'height', value: patient.height.toString()),
              Filed1(
                name: 'emergencyContact',
                value: patient.emergencyContact.toString(),
              ),
              Filed1(
                name: 'emergencyPhone',
                value: patient.emergencyPhone.toString(),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(children: [Text('allergies')]),
              ),
              ...patient.allergies.map(
                (allgery) => Filed1(
                  name: allgery.allergenName,
                  value: '${allgery.severity}  ${allgery.reaction}',
                ),
              ),

              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(children: [Text('chronicDiseases')]),
              ),
              ...patient.chronicDiseases.map(
                (disease) => Container(
                  decoration: BoxDecoration(border: Border.all()),
                  child: Column(
                    children: [
                      Filed1(
                        name: 'disease name',
                        value: '${disease.diseaseName}  ',
                      ),
                      Filed1(
                        name: 'discription',
                        value: '${disease.diseaseName}  ',
                      ),
                      // Row(children: [Text(disease.description)]),
                    ],
                  ),
                ),
              ),

              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(children: [Text('sergeries')]),
              ),
              ...patient.surgeries.map(
                (sergery) => Container(
                  decoration: BoxDecoration(border: Border.all()),
                  child: Column(
                    children: [
                      Filed1(
                        name: 'sergery name',
                        value: '${sergery.surgeryName}  ',
                      ),
                      Filed1(name: 'Suergon', value: sergery.surgeon),
                      Filed1(name: 'hospital', value: sergery.hospital),
                      Filed1(
                        name: 'date',
                        value: sergery.surgeryDate.toString(),
                      ),
                      // Row(children: [Text(disease.description)]),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(children: [Text('Medical Records')]),
              ),
              ...patient.medicalRecords.map(
                (record) => Container(
                  decoration: BoxDecoration(border: Border.all()),
                  child: Column(
                    children: [
                      Filed1(name: 'diagnosis', value: '${record.diagnosis}  '),
                      Filed1(name: 'doctorName', value: record.doctorName),
                      Filed1(name: 'notes', value: record.notes),
                      Filed1(name: 'symptoms', value: record.symptoms ?? ''),
                      Filed1(name: 'date', value: record.recordDate.toString()),
                      // Row(children: [Text(disease.description)]),
                    ],
                  ),
                ),
              ),

              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(children: [Text('Prescriptions ')]),
              ),
              ...patient.prescriptions.map(
                (prescription) => Container(
                  decoration: BoxDecoration(border: Border.all()),
                  child: Column(
                    children: [
                      Filed1(
                        name: 'diagnosis',
                        value: '${prescription.diagnosis}  ',
                      ),
                      Filed1(
                        name: 'doctorName',
                        value: prescription.doctorName,
                      ),
                      Filed1(name: 'notes', value: prescription.notes ?? ''),
                      Row(children: [Text('Medications')]),
                      ...prescription.items.map(
                        (item) => Column(
                          children: [
                            Filed1(name: 'name', value: item.medicationName),
                            Filed1(name: 'dosage', value: item.dosage),
                            Filed1(name: 'duration', value: item.duration),
                            Filed1(name: 'frequency', value: item.frequency),
                          ],
                        ),
                        // Filed1(name: 'mediaction name', value: item.medicationName),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class Filed1 extends StatelessWidget {
  const Filed1({super.key, required this.name, required this.value});
  final String name;
  final String value;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(width: 150, child: Text(name)),
        Expanded(child: Text(value)),
      ],
    );
  }
}
