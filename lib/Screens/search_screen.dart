import 'package:flutter/material.dart';
import 'package:wisata_candi/models/candi.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
 List<Candi> _filteredCandis = [];
 String _searchQuery = '';
  final TextEditingController _searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Pencarian Candi'),),
      body: Column(
        children: [

          Padding(
            padding: EdgeInsets.all(16.0),
            child: Container(
              child:TextField(
                autofocus: false,
                decoration: InputDecoration(
              labelText: 'Cari Candi',
              prefixIcon: Icon(Icons.search),
              border: InputBorder.none,
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.deepPurple),
              ),
              contentPadding: EdgeInsets.symmetric(
                horizontal: 16.0,
                vertical: 12.0, 
                ),

             ),
            ),
            ),
          ),

          ListView.builder(
            itemCount: _filteredCandis.length,
            itemBuilder: (context, index) {
              final candi = _filteredCandis[index];
              return Card(
                margin: EdgeInsets.symmetric(
                  horizontal: 16.0, 
                  vertical: 4.0
                  ), 
              );
            },
          ),
        ],
        ),
    );
    // TODO: implement build
    throw UnimplementedError();
  }

}