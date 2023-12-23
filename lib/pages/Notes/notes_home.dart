import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:travel_journal/config/app_routes.dart';
import 'package:travel_journal/pages/Notes/notes_edit.dart';
import 'package:travel_journal/components/app_colors.dart';
import 'package:travel_journal/widgets/note.dart';

class NoteHomePage extends StatefulWidget {
  const NoteHomePage({super.key});

  @override
  State<NoteHomePage> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<NoteHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColors.mainColor,
        appBar: AppBar(
          elevation: 0.0,
          title: Row(
            children: [
              Spacer(),
              Text("FireNotes",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                      fontWeight: FontWeight.bold)),
              SizedBox(width: 70),
              GestureDetector(
                  onTap: () =>
                      Navigator.of(context).pushNamed(AppRoutes.mappage),
                  child: Icon(Icons.location_on_rounded, color: Colors.white)),
              Spacer(),
            ],
          ),
          centerTitle: true,
          backgroundColor: AppColors.mainColor,
        ),
        body: Padding(
          padding: EdgeInsets.all(10),
          child: Stack(children: [
            Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Your recent Notes",
                    style: GoogleFonts.roboto(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 22),
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  Expanded(
                    child: StreamBuilder<QuerySnapshot>(
                      stream: FirebaseFirestore.instance
                          .collection("Notes")
                          .snapshots(),
                      builder:
                          (context, AsyncSnapshot<QuerySnapshot> snapshot) {
                        //checking the connection state , if we still load the data we can display
                        if (snapshot.connectionState ==
                            ConnectionState.waiting) {
                          return Center(
                            child: CircularProgressIndicator(),
                          );
                        }
                        if (snapshot.hasData) {
                          return GridView(
                            gridDelegate:
                                SliverGridDelegateWithFixedCrossAxisCount(
                                    crossAxisCount: 2),
                            children: snapshot.data!.docs
                                .map((note) => noteCard(() {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) =>
                                                NoteEditPage(note),
                                          ));
                                    }, note))
                                .toList(),
                          );
                        }
                        return Text(
                          "there's no Notes",
                          style: GoogleFonts.nunito(color: Colors.white),
                        );
                      },
                    ),
                  )
                ]),
          ]),
        ),
        floatingActionButton: FloatingActionButton.extended(
          onPressed: () {
            Navigator.of(context).pushNamed(AppRoutes.noteaddpage);
          },
          label: Text("Add Note"),
          icon: Icon(Icons.add),
        ));
  }
}
