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

class SkeletonLoaderWithShimmer extends StatefulWidget {
  @override
  _SkeletonLoaderWithShimmerState createState() => _SkeletonLoaderWithShimmerState();
}

class _SkeletonLoaderWithShimmerState extends State<SkeletonLoaderWithShimmer> {
  bool _isLoading = true;

  void _loadData() {
    Future.delayed(const Duration(seconds: 3), () {
      setState(() {
        _isLoading = false; 
      });
    });
  }

  @override
  void initState() {
    super.initState();
    _loadData();
  }

  @override
  Widget build(BuildContext context) {
    return _isLoading ? _buildSkeletonLoader() : _buildActualContent();
  }

  Widget _buildSkeletonLoader() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
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
        
        Shimmer.fromColors(
          baseColor: Colors.grey[300]!,
          highlightColor: Colors.grey[100]!,
          child: CircleAvatar(
            radius: 30,
            backgroundColor: Colors.grey[300],
          ),
        ),
        const SizedBox(height: 10),
        
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
        
        Shimmer.fromColors(
          baseColor: Colors.grey[300]!,
          highlightColor: Colors.grey[100]!,
          child: Container(
            height: 200,
            color: Colors.grey[300],
          ),
        ),
        const SizedBox(height: 20),
        
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

  Widget _buildActualContent() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          "Conteúdo Real Carregado!",
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 10),
        const CircleAvatar(
          radius: 30,
          backgroundImage: NetworkImage('https://www.example.com/profile.jpg'),
        ),
        const SizedBox(height: 10),
        ElevatedButton(
          onPressed: () {},
          child: const Text("Clique Aqui"),
        ),
        const SizedBox(height: 20),
        const Text(
          "Aqui está o conteúdo da tela após o carregamento.",
          style: TextStyle(fontSize: 16),
        ),
      ],
    );
  }
}
