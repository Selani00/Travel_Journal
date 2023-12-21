import 'dart:math';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:travel_journal/components/app_colors.dart';

class NoteAddPage extends StatefulWidget {
  const NoteAddPage({super.key});

  @override
  State<NoteAddPage> createState() => _NoteEditorScreenState();
}

class _NoteEditorScreenState extends State<NoteAddPage> {
  int color_id = Random().nextInt(AppColors.cardsColors.length);
  String date = DateTime.now().toString();

  TextEditingController _titleController = TextEditingController();
  TextEditingController _mainController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.cardsColors[color_id],
      appBar: AppBar(
        backgroundColor: AppColors.cardsColors[color_id],
        elevation: 0.0,
        iconTheme: IconThemeData(color: Colors.black),
        title: Text(
          "Add a new Note",
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Padding(
          padding: EdgeInsets.all(16.0),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            TextField(
              controller: _titleController,
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: 'Note Title',
              ),
              style: AppColors.mainTitle,
            ),
            SizedBox(
              height: 8.0,
            ),
            Text(
              date,
              style: AppColors.dateTitle,
            ),
            SizedBox(
              height: 28.0,
            ),
            TextField(
              controller: _mainController,
              keyboardType: TextInputType.multiline,
              maxLines: null,
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: 'Note Content',
              ),
              style: AppColors.mainContent,
            ),
          ])),
      floatingActionButton: Transform.scale(
        scale: 1.3,
        child: FloatingActionButton(
          onPressed: () async {
            FirebaseFirestore.instance
                .collection("Notes")
                .add({
                  "note_title": _titleController.text,
                  "creation_data": date,
                  "note_content": _mainController.text,
                  "color_id": color_id.toString(),
                })
                .then((DocumentReference document) =>
                    {print(document.id), Navigator.pop(context)})
                .catchError(
                    (error) => print("Failed to add new note due to $error"));
          },
          backgroundColor: Colors.white,
          foregroundColor: Colors.black,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30.0),
          ),
          child: Icon(
            Icons.save,
            size: 32,
          ),
        ),
      ),
    );
  }
}
