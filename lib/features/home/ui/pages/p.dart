import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:health_app/auth_state.dart';
import 'package:health_app/core/error/app_error.dart';
import 'package:health_app/di.dart';
import 'package:health_app/features/auth/domain/models/account.dart';
import 'package:health_app/features/home/ui/pages/initialize_profile/p.dart';
import 'package:health_app/features/home/ui/pages/initialize_profile/page.dart';
import 'package:health_app/features/home/ui/pages/qr.dart';
import 'package:health_app/shared/ex.dart';
import 'package:health_app/shared/widgets/dialog/app_dialog2.dart';
import './profile.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:health_app/features/patients/ui/home.dart' show MedicalHistoryPage;
import 'package:health_app/features/pharmacist/domain/models/prescription.dart' as model;

// medicalrec
// emergency
// prescriptions

class MainPatientPage extends ConsumerWidget {
  const MainPatientPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isInitialized = ref.watch(isInitializedProvider);
    if (isInitialized) {
      return HomePage();
    }
    return InitializeProfilePage();
  }
}

// Removed duplicate class

class EmergenciesScreen extends ConsumerStatefulWidget {
  const EmergenciesScreen({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _EmergenciesScreenState();
}

class _EmergenciesScreenState extends ConsumerState<EmergenciesScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: RefreshIndicator(
        child: SingleChildScrollView(child: Column()),
        onRefresh: () async {},
      ),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  //  _HomePageState();
  int _selectedIndex = 0;
  final PageController _pageController = PageController();
  Map<String, dynamic> healthData = {
    'steps': 8423,
    'calories': 420,
    'heartRate': 72,
    'sleep': 7.2,
    'water': 1.8,
    'weight': 68.5,
  };

  // Sample health data
  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF8FAFD),
      body: PageView(
        controller: _pageController,
        children: [
          MyHomePage(),
          MedicalHistoryPage(),
          const PatientPrescriptionsPage(),
          ProfilePage(),
        ],
      ),

      // Bottom Navigation Bar
      bottomNavigationBar: _buildBottomNavBar(),

      // Floating Action Button for Quick Add
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          AppDialog().loading();
          xlog('start qr ');
          final dio = appRepo.getDio();
          final res0 = await dio.get('/Patient/emergency-screen');
          xlog(res0);

          final res = await appRepo.generateQr();
          AppDialog().dismiss();
          if (!context.mounted) return;

          showDialog(
            context: context,
            builder: (context) {
              return Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    // height: MediaQuery.of(context).size.height * 0.6,
                    child: AlertDialog(
                      content: Column(
                        children: [
                          // Text('data'),
                          res.when(
                            success: (s) {
                              final str = s['qrCodeUrl'];
                              xlog(s);
                              return ImageFromDataUrl(dataUrl: str);
                            },
                            error: (e) {
                              xlog('error');
                              return Text(e.msg);
                            },
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              );
            },
          );
          // xlog(res);
          // res.when(
          //   success: (s) {
          //     final str = s['qrCodeUrl'];
          //     xlog(s);
          //   },
          //   error: (e) {
          //     xlog('error');
          //   },
          // );

          // Add new health data
          // _showAddDataDialog(context);
        },
        backgroundColor: Color(0xFF4A6FFF),
        shape: CircleBorder(),
        child: Icon(Icons.qr_code, color: Colors.white, size: 28),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }


  Widget _buildBottomNavBar() {
    final tr = context.tr;
    return BottomAppBar(
      shape: CircularNotchedRectangle(),
      notchMargin: 8,
      child: SizedBox(
        height: 70,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            _buildNavItem(Icons.home, tr.home, 0),
          _buildNavItem(Icons.bar_chart, tr.medicalHistory, 1),
          const SizedBox(width: 40), // Space for FAB
          _buildNavItem(Icons.medication, tr.prescriptions, 2),
            _buildNavItem(Icons.person, tr.profile, 3),
          ],
        ),
      ),
    );
  }

  Widget _buildNavItem(IconData icon, String label, int index) {
    return GestureDetector(
      behavior: HitTestBehavior.opaque,
      onTap: () {
        setState(() {
          _selectedIndex = index;
        });
        _pageController.animateToPage(
          index,
          duration: const Duration(milliseconds: 300),
          curve: Curves.easeInOut,
        );
      },
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(
            icon,
            color: _selectedIndex == index
                ? const Color(0xFF4A6FFF)
                : const Color(0xFF8A8A8A),
            size: 28,
          ),
          const SizedBox(height: 4),
          Text(
            label,
            style: TextStyle(
              fontSize: 12,
              color: _selectedIndex == index
                  ? const Color(0xFF4A6FFF)
                  : const Color(0xFF8A8A8A),
            ),
          ),
        ],
      ),
    );
  }
}

class PatientPrescriptionsPage extends ConsumerWidget {
  const PatientPrescriptionsPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final tr = context.tr;
    return Scaffold(
      appBar: AppBar(title: Text(tr.prescriptions)),
      body: FutureBuilder<ErrorOr<List<dynamic>>>(
        future: appRepo.getPatientPrescriptions(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          }
          if (snapshot.hasError || !snapshot.hasData) {
            return Center(child: Text(tr.retry));
          }

          return snapshot.data!.when(
            success: (data) {
              final prescriptions =
                  data.map((e) => model.Prescription.fromJson(e)).toList();
              if (prescriptions.isEmpty) {
                return Center(child: Text(tr.noMedicineScheduled));
              }
              return ListView.builder(
                padding: const EdgeInsets.all(16),
                itemCount: prescriptions.length,
                itemBuilder: (context, index) {
                  final p = prescriptions[index];
                  return Card(
                    margin: const EdgeInsets.only(bottom: 12),
                    child: ListTile(
                      title: Text(p.doctorName),
                      subtitle: Text(p.diagnosis),
                      trailing: Text(p.getStatusString()),
                    ),
                  );
                },
              );
            },
            error: (e) => Center(child: Text(e.msg)),
          );
        },
      ),
    );
  }
}

class MyHomePage extends ConsumerStatefulWidget {
  const MyHomePage({super.key});

  @override
  ConsumerState<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends ConsumerState<MyHomePage> {
  Map<String, dynamic> healthData = {
    'steps': 8423,
    'calories': 420,
    'heartRate': 72,
    'sleep': 7.2,
    'water': 1.8,
  };

  @override
  Widget build(BuildContext context) {
    final patientProfile = ref.watch(profileProvider);

    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // App Bar
              _buildAppBar(),

              // Greeting and Date
              _buildGreeting(),

              // Health Stats Cards
              _buildHealthStats(patientProfile),

              // Recent Activities
              _buildRecentMedicalRecords(),

              // Health Tips
              _buildHealthTips(),

              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }

  String _getMonthName(int month) {
    const months = [
      'January',
      'February',
      'March',
      'April',
      'May',
      'June',
      'July',
      'August',
      'September',
      'October',
      'November',
      'December',
    ];
    return months[month - 1];
  }


  Widget _buildStatItem({
    required IconData icon,
    required String title,
    required String value,
    required double target,
    required Color color,
    required String unit,
  }) {
    double progress = double.parse(value) / target;
    if (progress > 1) progress = 1;

    return Row(
      children: [
        Container(
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: color.withValues(alpha: 0.1),
            borderRadius: BorderRadius.circular(12),
          ),
          child: Icon(icon, color: color, size: 24),
        ),
        SizedBox(width: 16),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: TextStyle(fontSize: 14, color: Color(0xFF8A8A8A)),
              ),
              SizedBox(height: 4),
              Text(
                '$value $unit',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w700,
                  color: Color(0xFF2D2D2D),
                ),
              ),
            ],
          ),
        ),
        CircularPercentIndicator(
          radius: 25,
          lineWidth: 4,
          percent: progress,
          center: Text(
            '${(progress * 100).toInt()}%',
            style: const TextStyle(fontSize: 12, fontWeight: FontWeight.w600),
          ),
          progressColor: color,
          backgroundColor: color.withValues(alpha: 0.1),
        ),
      ],
    );
  }

  Widget _buildRecentMedicalRecords() {
    final tr = context.tr;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                tr.medicalRecord,
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w700,
                  color: const Color(0xFF2D2D2D),
                ),
              ),
              TextButton(
                onPressed: () {
                  // Access _pageController from the parent HomePage state
                  // This is a simplified workaround
                },
                child: Text(
                  tr.viewAll,
                  style: const TextStyle(
                    color: Color(0xFF4A6FFF),
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 12),
          FutureBuilder<ErrorOr<List<dynamic>>>(
            future: appRepo.getPatientMedicalRecords(),
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.waiting) {
                return const Center(child: CircularProgressIndicator());
              }
              if (snapshot.hasError || !snapshot.hasData) {
                return Center(child: Text(tr.noMedicalHistory));
              }

              return snapshot.data!.when(
                success: (data) {
                  if (data.isEmpty) {
                    return Center(child: Text(tr.noMedicalHistory));
                  }
                  final records = data.take(3).toList();
                  return Column(
                    children:
                        records.map((record) {
                          return Container(
                            margin: const EdgeInsets.only(bottom: 12),
                            padding: const EdgeInsets.all(16),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(16),
                              boxShadow: const [
                                BoxShadow(
                                  color: Colors.black12,
                                  blurRadius: 6,
                                  offset: Offset(0, 2),
                                ),
                              ],
                            ),
                            child: Row(
                              children: [
                                Container(
                                  width: 40,
                                  height: 40,
                                  decoration: BoxDecoration(
                                    color: const Color(
                                      0xFF4A6FFF,
                                    ).withValues(alpha: 0.1),
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: const Icon(
                                    Icons.medical_services,
                                    color: Color(0xFF4A6FFF),
                                  ),
                                ),
                                const SizedBox(width: 16),
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        record['diagnosis'] ?? 'Diagnosis',
                                        style: const TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w600,
                                          color: Color(0xFF2D2D2D),
                                        ),
                                      ),
                                      const SizedBox(height: 4),
                                      Text(
                                        record['doctorName'] ?? 'Doctor',
                                        style: const TextStyle(
                                          fontSize: 14,
                                          color: Color(0xFF8A8A8A),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Text(
                                  (record['recordDate'] as String).split('T')[0],
                                  style: const TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w600,
                                    color: Color(0xFF4A6FFF),
                                  ),
                                ),
                              ],
                            ),
                          );
                        }).toList(),
                  );
                },
                error: (e) => Center(child: Text(e.msg)),
              );
            },
          ),
        ],
      ),
    );
  }


  Widget _buildAppBar() {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CircleAvatar(
            radius: 22,
            // backgroundImage: NetworkImage(
            //     'https://images.unsplash.com/photo-1494790108755-2616b612b786?ixlib=rb-1.2.1&auto=format&fit=crop&w=200&q=80'),
          ),
          IconButton(
            icon: Icon(
              Icons.notifications_outlined,
              color: Color(0xFF4A4A4A),
              size: 28,
            ),
            onPressed: () {},
          ),
        ],
      ),
    );
  }

  Widget _buildGreeting() {
    return Consumer(
      builder: (context, ref, child) {
        final tr = context.tr;
        final auth = ref.watch(accountProvider);
        String name = 'User';
        auth.when(
          initial: () {},
          acount: (account) {
            account.whenOrNull(
              patient: (patient) {
                name = patient.fullName;
              },
            );
          },
        );

        String greetingPrefix = tr.goodMorning;
        final hour = DateTime.now().hour;
        if (hour >= 12 && hour < 17) {
          greetingPrefix = tr.goodAfternoon;
        } else if (hour >= 17) {
          greetingPrefix = tr.goodEvening;
        }

        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                '$greetingPrefix, $name!',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w700,
                  color: Color(0xFF2D2D2D),
                ),
              ),
              SizedBox(height: 4),
              Text(
                '${DateTime.now().day} ${_getMonthName(DateTime.now().month)} ${DateTime.now().year}',
                style: TextStyle(fontSize: 14, color: Color(0xFF8A8A8A)),
              ),
            ],
          ),
        );
      },
    );
  }

  Widget _buildHealthStats(dynamic profile) {
    final tr = context.tr;
    return Container(
      margin: EdgeInsets.all(20),
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 10,
            offset: Offset(0, 4),
          ),
        ],
      ),
      child: Column(
        children: [
          _buildStatItem(
            icon: Icons.monitor_weight,
            title: tr.weight,
            value: profile.weight > 0 ? '${profile.weight}' : '--',
            target: 100,
            color: Color(0xFF4A6FFF),
            unit: tr.weightUnit,
          ),
          SizedBox(height: 16),
          _buildStatItem(
            icon: Icons.height,
            title: tr.height,
            value: profile.height > 0 ? '${profile.height}' : '--',
            target: 200,
            color: Color(0xFFFF6B6B),
            unit: tr.heightUnit,
          ),
          SizedBox(height: 16),
          _buildStatItem(
            icon: Icons.nightlight_round,
            title: tr.sleep,
            value: '${healthData['sleep']}',
            target: 8,
            color: Color(0xFF9B51E0),
            unit: tr.hours,
          ),
          SizedBox(height: 16),
          _buildStatItem(
            icon: Icons.local_drink,
            title: tr.water,
            value: '${healthData['water']}',
            target: 2.5,
            color: Color(0xFF2D9CDB),
            unit: tr.liters,
          ),
        ],
      ),
    );
  }

  Widget _buildHealthTips() {
    final tr = context.tr;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            tr.healthTips,
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w700,
              color: Color(0xFF2D2D2D),
            ),
          ),
          SizedBox(height: 12),
          Container(
            padding: EdgeInsets.all(20),
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [Color(0xFF4A6FFF), Color.fromARGB(255, 28, 15, 40)],
              ),
              borderRadius: BorderRadius.circular(20),
            ),
            child: Row(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        tr.stayHydrated,
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w700,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(height: 8),
                      Text(
                        tr.drinkWaterTip,
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.white.withValues(alpha: 0.9),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(width: 20),
                Container(
                  width: 80,
                  height: 80,
                  decoration: BoxDecoration(
                    color: Colors.white.withValues(alpha: 0.2),
                    borderRadius: BorderRadius.circular(40),
                  ),
                  child: const Icon(Icons.local_drink, color: Colors.white, size: 40),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
