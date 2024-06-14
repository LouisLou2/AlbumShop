import 'package:flutter/material.dart';

class TrackListWidget extends StatelessWidget {
  final List<String> tracks;

  const TrackListWidget({super.key,required this.tracks});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: tracks.length+1,
      itemBuilder: (context,index){
        if(index==0) {
            return const Text(
            'Track List',
            style: TextStyle(
              fontSize: 25,
              fontStyle: FontStyle.italic,
              fontWeight: FontWeight.bold,
            ),
          );
        }
        return Text(
          tracks[index-1],
          style: const TextStyle(
            fontSize: 18,
            letterSpacing: -0.5,
            fontWeight: FontWeight.w600,
          ),
        );
      },
    );
  }
}