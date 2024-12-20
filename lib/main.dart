import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Shimmer Skeleton Loader'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: SkeletonLoaderWithShimmer(),
        ),
      ),
    );
  }
}

class SkeletonLoaderWithShimmer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Skeleton Loader for Text with Shimmer effect
        Shimmer.fromColors(
          baseColor: Colors.grey[300]!,
          highlightColor: Colors.grey[100]!,
          child: Container(
            height: 20,
            width: double.infinity,
            color: Colors.grey[300],
          ),
        ),
        const SizedBox(height: 10),
        
        // Skeleton Loader for Avatar with Shimmer effect
        Shimmer.fromColors(
          baseColor: Colors.grey[300]!,
          highlightColor: Colors.grey[100]!,
          child: CircleAvatar(
            radius: 30,
            backgroundColor: Colors.grey[300],
          ),
        ),
        const SizedBox(height: 10),
        
        // Skeleton Loader for Button with Shimmer effect
        Shimmer.fromColors(
          baseColor: Colors.grey[300]!,
          highlightColor: Colors.grey[100]!,
          child: Container(
            height: 50,
            width: double.infinity,
            color: Colors.grey[300],
          ),
        ),
        const SizedBox(height: 20),
        
        // Skeleton Loader for Post Content with Shimmer effect
        Shimmer.fromColors(
          baseColor: Colors.grey[300]!,
          highlightColor: Colors.grey[100]!,
          child: Container(
            height: 200,
            color: Colors.grey[300],
          ),
        ),
        const SizedBox(height: 20),
        
        // Skeleton Loader for Another Text with Shimmer effect
        Shimmer.fromColors(
          baseColor: Colors.grey[300]!,
          highlightColor: Colors.grey[100]!,
          child: Container(
            height: 20,
            width: 150,
            color: Colors.grey[300],
          ),
        ),
      ],
    );
  }
}
