import 'dart:io';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:image_picker/image_picker.dart';
import 'package:myapp/shared/infrastructure/auth_storage.dart';
import 'package:myapp/shared/domain/api_constants.dart';
import 'package:myapp/5_profile/domain/profile.dart';

Future<void> uploadProfilePicture({
  required BuildContext context,
  required Profile profile,
  required void Function() onSuccess,
}) async {
  final picker = ImagePicker();
  final pickedFile = await picker.pickImage(source: ImageSource.gallery);

  if (pickedFile == null) return;

  final file = File(pickedFile.path);
  final token = await AuthStorage().getToken();

  final request = http.MultipartRequest(
    'PUT',
    Uri.parse('${ApiConstants.baseUrl}/fieldworkers/${profile.id}'),
  );
  request.headers['Authorization'] = 'Bearer $token';

  request.fields['name'] = profile.name.getOrCrash();
  request.fields['lastname'] = profile.lastname.getOrCrash();
  request.fields['phoneNumber'] = profile.phoneNumber.getOrCrash();
  request.fields['winegrowerId'] = profile.winegrowerId.toString();
  request.fields['status'] = profile.status;

  request.files.add(await http.MultipartFile.fromPath('image', file.path));

  final response = await request.send();

  if (response.statusCode == 200) {
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(content: Text('Imagen actualizada correctamente')),
    );
    onSuccess();
  } else {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text('Error al actualizar imagen: ${response.statusCode}'),
      ),
    );
  }
}
