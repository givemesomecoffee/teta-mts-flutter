import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:image_picker/image_picker.dart';
import '../../../services/database_service.dart';

class ProfileAvatar extends StatefulWidget {
  const ProfileAvatar({Key? key, required this.imageUrl}) : super(key: key);

  final String? imageUrl;

  @override
  State<ProfileAvatar> createState() => _ProfileAvatarState();
}

class _ProfileAvatarState extends State<ProfileAvatar> {
  String? _avatarUrl;
  late DatabaseService repository;

  @override
  void initState() {
    _avatarUrl = widget.imageUrl;
    super.initState();
    repository = GetIt.instance.get<DatabaseService>();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: pickImage,
      child: CircleAvatar(
        backgroundImage: _avatarUrl != null ? NetworkImage(_avatarUrl!) : null,
        radius: 32,
      ),
    );
  }

  void pickImage() async {
    final ImagePicker picker = ImagePicker();
    final XFile? image = await picker.pickImage(source: ImageSource.gallery);
    if (image != null) {
      final downLoadUrl = await repository.updateAvatar(image);
      setState(() {
        _avatarUrl = downLoadUrl;
      });
    }
  }
}
