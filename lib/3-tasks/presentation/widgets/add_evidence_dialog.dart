import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_picker/image_picker.dart';
import 'package:myapp/3-tasks/application/evidences/evidence_bloc.dart';
import 'package:myapp/3-tasks/application/evidences/evidence_event.dart';
import 'package:myapp/shared/presentation/snack_bar.dart';

class AddEvidenceDialog extends StatefulWidget {
  final int taskId;

  const AddEvidenceDialog({super.key, required this.taskId});

  @override
  State<AddEvidenceDialog> createState() => _AddEvidenceDialogState();
}

class _AddEvidenceDialogState extends State<AddEvidenceDialog> {
  final _formKey = GlobalKey<FormState>();
  final _descriptionController = TextEditingController();
  final _progressController = TextEditingController();
  File? _image;

  Future<void> _pickImage() async {
    final source = await showDialog<ImageSource>(
      context: context,
      builder: (ctx) => SimpleDialog(
        title: const Text('Seleccionar fuente'),
        children: [
          SimpleDialogOption(
            onPressed: () => Navigator.pop(ctx, ImageSource.gallery),
            child: const Text('Galería'),
          ),
          SimpleDialogOption(
            onPressed: () => Navigator.pop(ctx, ImageSource.camera),
            child: const Text('Cámara'),
          ),
        ],
      ),
    );

    if (source != null) {
      final picked = await ImagePicker().pickImage(source: source);
      if (picked != null) {
        setState(() => _image = File(picked.path));
      }
    }
  }

  void _submit() {
    if (_formKey.currentState!.validate()) {
      if (_image == null) {
        showSnackBar(context, 'Debe subir una imagen');
        return;
      } else {
        context.read<EvidenceBloc>().add(
              EvidenceCreated(
                taskId: widget.taskId,
                progressPercentage: int.parse(_progressController.text),
                description: _descriptionController.text,
                imagePath: _image!.path,
              ),
            );
        Navigator.of(context).pop();
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const Text('Nueva Evidencia'),
      content: Form(
        key: _formKey,
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              TextFormField(
                controller: _descriptionController,
                decoration: const InputDecoration(labelText: 'Descripción'),
                validator: (v) => v!.isEmpty ? 'Requerido' : null,
              ),
              TextFormField(
                controller: _progressController,
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(labelText: 'Progreso (%)'),
                validator: (v) => v!.isEmpty ? 'Requerido' : null,
              ),
              const SizedBox(height: 20),
              if (_image != null) Image.file(_image!, height: 150),
              ElevatedButton(
                onPressed: _pickImage,
                child: const Text('Subir o Tomar Foto'),
              ),
            ],
          ),
        ),
      ),
      actions: [
        TextButton(
          onPressed: () => Navigator.pop(context),
          child: const Text('Cancelar'),
        ),
        ElevatedButton(
          onPressed: _submit,
          child: const Text('Guardar'),
        ),
      ],
    );
  }
}
