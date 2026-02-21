// import 'package:flutter/material.dart';
// import 'package:health_app/core/constants/k.dart';
// import 'package:health_app/features/auth/ui/widgets/login_form.dart';
// import 'package:health_app/shared/ex.dart';
// import '../../../../core/constants/app_layout.dart';
// import '../../../../shared/widgets/custom_button.dart';
// import '../../../../shared/widgets/custom_text_field.dart';

// class RegisterForm extends StatelessWidget {
//   final TextEditingController phoneController;
//   final TextEditingController idCardController;
//   final TextEditingController nameController;
//   final TextEditingController emailController;
//   final TextEditingController passwordController;
//   final TextEditingController dateOfBirthController;
//   final TextEditingController passwordConfirmController;
//   final TextEditingController licenseNumberController;
//   final TextEditingController licenseDocumentUrlController;
//   final TextEditingController pharmacyNameController;
//   final TextEditingController specializationController;
//   final TextEditingController hospitalController;
//   // final data = PharmacistRegisterRequest(
//   //   confirmPassword: passwordConfirmController.text,
//   //   nationalId: _idCardController.text,
//   //   password: _passwordController.text,
//   //   fullName: nameController.text,
//   //   dateOfBirth: _dateOfBirthController.text,
//   //   phoneNumber: _phoneController.text,
//   //   email: _emailController.text,
//   //   licenseNumber: licenseNumberController.text,
//   //   licenseDocumentUrl: licenseDocumentUrlController.text,
//   //   pharmacyName: pharmacyNameController.text,
//   // );

//   //   final data = DoctorRegisterRequest(
//   //   confirmPassword: passwordConfirmController.text,
//   //   nationalId: _idCardController.text,
//   //   password: _passwordController.text,
//   //   fullName: nameController.text,
//   //   dateOfBirth: _dateOfBirthController.text,
//   //   phoneNumber: _phoneController.text,
//   //   email: _emailController.text,
//   //   licenseNumber: licenseNumberController.text,
//   //   specialization: specializationController.text,
//   //   hospital: hospitalController.text,
//   //   licenseDocumentUrl: licenseDocumentUrlController.text,
//   // );
//   final UserType userType;
//   final VoidCallback onLogin;
//   final bool isLoading;
//   final String selectedUserType;
//   // final Function(String s) onUserTypeChanged;
//   final ValueChanged<String?> onUserTypeChanged;

//   const RegisterForm({
//     super.key,
//     required this.phoneController,
//     required this.passwordController,
//     required this.onLogin,
//     required this.isLoading,
//     required this.nameController,
//     required this.passwordConfirmController,
//     required this.dateOfBirthController,
//     required this.idCardController,
//     required this.selectedUserType,
//     required this.onUserTypeChanged,
//     required this.emailController,
//     required this.userType,
//     required this.licenseNumberController,
//     required this.licenseDocumentUrlController,
//     required this.pharmacyNameController,
//     required this.specializationController,
//     required this.hospitalController,
//   });
//   String? passwordValidator(String? value) {
//     if (value == null || value.isEmpty) {
//       return 'Please enter password';
//     }
//     if (value.length < 6) {
//       return 'Password must be at least 6 characters';
//     }
//     if (passwordConfirmController.text != passwordController.text) {
//       return 'Password dont match';
//     }
//     return null;
//   }

//   @override
//   Widget build(BuildContext context) {
//     final localizations = context.tr;
//     final userTypeItems = [
//       DropdownMenuItem(value: PATIENT_KEY, child: Text(localizations.patient)),
//       DropdownMenuItem(
//         value: PHARMACIST_KEY,
//         child: Text(localizations.pharmacist),
//       ),
//       DropdownMenuItem(value: DOCTOR_KEY, child: Text(localizations.doctor)),
//       // DropdownMenuItem(value: ADMIN_KEY, child: Text(localizations.admin)),
//     ];

//     return Column(
//       spacing: AppLayout.spacingMedium,
//       children: [
//         Center(
//           child: CustomDropdownField(
//             value: selectedUserType,
//             items: userTypeItems,
//             onChanged: onUserTypeChanged,
//             labelText: localizations.userType,
//             hintText: localizations.selectUserType,
//             prefixIcon: Icons.person,
//             validator: (value) {
//               // phoneController.
//               if (value == null || value.isEmpty) {
//                 return 'Please select user type';
//               }
//               return null;
//             },
//           ),
//         ),
//         CustomTextField(
//           controller: nameController,
//           labelText: context.tr.name,
//           prefixIcon: Icons.person,
//           keyboardType: TextInputType.name,
//           validator: (value) {
//             if (value == null || value.isEmpty) {
//               return 'Please enter your name';
//             }
//             return null;
//           },
//         ),
//         CustomTextField(
//           controller: emailController,
//           labelText: context.tr.email,
//           prefixIcon: Icons.email,
//           keyboardType: TextInputType.emailAddress,
//           validator: (value) {
//             if (value == null || value.isEmpty) {
//               return 'Please enter your email';
//             }
//             return null;
//           },
//         ),

//         CustomTextField(
//           controller: phoneController,
//           labelText: localizations.phoneNumber,
//           prefixIcon: Icons.phone,
//           keyboardType: TextInputType.phone,
//           validator: (value) {
//             if (value == null || value.isEmpty) {
//               return 'Please enter phone number';
//             }
//             // if (!RegExp(r'^[0-9]{9}$').hasMatch(value)) {
//             //   return 'Please enter a valid 10-digit phone number';
//             // }
//             return null;
//           },
//         ),
//         CustomTextField(
//           controller: idCardController,
//           labelText: localizations.idCardNumber,
//           prefixIcon: Icons.cast_rounded,
//           keyboardType: TextInputType.phone,
//         ),
//         CustomTextField(
//           controller: passwordController,
//           labelText: localizations.password,
//           prefixIcon: Icons.lock,
//           obscureText: true,
//           validator: passwordValidator,
//         ),
//         CustomTextField(
//           controller: passwordConfirmController,
//           labelText: localizations.passwordConfirmation,
//           prefixIcon: Icons.lock,
//           obscureText: true,
//           validator: passwordValidator,
//         ),
//         CustomTextField(
//           controller: dateOfBirthController,
//           labelText: 'date of birth',
//           isDatePicker: true,
//           lastDate: DateTime.now(),
//           validator: (a) {
//             if (a == null || a.isEmpty) {
//               return 'you must enter valid date';
//             }
//             try {
//               final aa = DateTime.tryParse(a);
//             } catch (e) {
//               return 'you must enter valid date';
//             }
//             return null;
//           },
//         ),

//         if (userType == UserType.doctor || userType == UserType.pharmacist)
//           CustomTextField(
//             controller: licenseNumberController,
//             labelText: 'Licens number',
//           ),
//         if (userType == UserType.doctor || userType == UserType.pharmacist)
//           CustomTextField(
//             controller: licenseDocumentUrlController,
//             labelText: 'Licens Document Url',
//           ),

//         // License Document File Picker Section
//         if (userType == UserType.doctor ||
//             userType == UserType.pharmacist)
//           Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               // Hidden text field for file URL
//               Opacity(
//                 opacity: 0,
//                 child: CustomTextField(
//                   controller: licenseDocumentUrlController,
//                   labelText: '',
//                 ),
//               ),

//               Text(
//                 'License Document',
//                 style: TextStyle(
//                   fontSize: 14,
//                   fontWeight: FontWeight.w500,
//                   color: Theme.of(
//                     context,
//                   ).colorScheme.onSurface.withOpacity(0.8),
//                 ),
//               ),
//               const SizedBox(height: 8),

//               // File picker button
//               OutlinedButton(
//                 onPressed: _isPickingFile ? null : _pickLicenseDocument,
//                 style: OutlinedButton.styleFrom(
//                   minimumSize: const Size(double.infinity, 50),
//                   side: BorderSide(
//                     color: Theme.of(context).colorScheme.outline,
//                   ),
//                   backgroundColor: Theme.of(context).colorScheme.surface,
//                 ),
//                 child: _isPickingFile
//                     ? const SizedBox(
//                         height: 20,
//                         width: 20,
//                         child: CircularProgressIndicator(strokeWidth: 2),
//                       )
//                     : Row(
//                         mainAxisSize: MainAxisSize.min,
//                         children: [
//                           const Icon(Icons.attach_file),
//                           const SizedBox(width: 8),
//                           Text(
//                             _licenseFileName.isEmpty
//                                 ? 'Choose License Document'
//                                 : 'Change Document',
//                           ),
//                         ],
//                       ),
//               ),

//               // Selected file info
//               if (_licenseFileName.isNotEmpty)
//                 Padding(
//                   padding: const EdgeInsets.only(top: 8.0),
//                   child: Container(
//                     padding: const EdgeInsets.all(12),
//                     decoration: BoxDecoration(
//                       color: Theme.of(context).colorScheme.surfaceVariant,
//                       borderRadius: BorderRadius.circular(8),
//                       border: Border.all(
//                         color: Theme.of(context).colorScheme.outline,
//                         width: 0.5,
//                       ),
//                     ),
//                     child: Row(
//                       children: [
//                         Icon(
//                           _licenseFileName.toLowerCase().endsWith('.pdf')
//                               ? Icons.picture_as_pdf
//                               : Icons.description,
//                           color: Theme.of(context).primaryColor,
//                           size: 24,
//                         ),
//                         const SizedBox(width: 12),
//                         Expanded(
//                           child: Column(
//                             crossAxisAlignment: CrossAxisAlignment.start,
//                             children: [
//                               Text(
//                                 _licenseFileName,
//                                 style: TextStyle(
//                                   fontWeight: FontWeight.w500,
//                                   fontSize: 14,
//                                   overflow: TextOverflow.ellipsis,
//                                 ),
//                               ),
//                               if (_selectedLicenseFile != null)
//                                 Text(
//                                   _formatFileSize(
//                                     _selectedLicenseFile!.lengthSync(),
//                                   ),
//                                   style: TextStyle(
//                                     fontSize: 12,
//                                     color: Theme.of(
//                                       context,
//                                     ).colorScheme.onSurface.withOpacity(0.6),
//                                   ),
//                                 ),
//                             ],
//                           ),
//                         ),
//                         IconButton(
//                           onPressed: _removeSelectedFile,
//                           icon: const Icon(Icons.close, size: 20),
//                           padding: EdgeInsets.zero,
//                           constraints: const BoxConstraints(),
//                         ),
//                       ],
//                     ),
//                   ),
//                 ),

//               // Help text
//               Padding(
//                 padding: const EdgeInsets.only(top: 4.0),
//                 child: Text(
//                   'Accepted formats: PDF, JPG, PNG, DOC (Max 10MB)',
//                   style: TextStyle(
//                     fontSize: 12,
//                     color: Theme.of(
//                       context,
//                     ).colorScheme.onSurface.withOpacity(0.6),
//                   ),
//                 ),
//               ),
//               const SizedBox(height: 16),
//             ],
//           ),

//         if (userType == UserType.doctor)
//           CustomTextField(
//             controller: hospitalController,
//             labelText: 'hospital',
//           ),
//         if (userType == UserType.doctor)
//           CustomTextField(
//             controller: specializationController,
//             labelText: 'specialization',
//           ),
//         if (userType == UserType.pharmacist)
//           CustomTextField(
//             controller: pharmacyNameController,
//             labelText: 'pharmacy name',
//           ),
//         CustomButton(
//           onPressed: onLogin,
//           text: localizations.register,
//           isLoading: isLoading,
//         ),
//       ],
//     );
//   }
// }
