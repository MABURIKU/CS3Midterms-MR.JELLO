import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import '../post_model.dart';
import '../api_service.dart';

class PostListScreen extends StatefulWidget {
  const PostListScreen({Key? key}) : super(key: key);

  @override
  _PostListScreenState createState() => _PostListScreenState();
}

class _PostListScreenState extends State<PostListScreen> {
  late Future<List<Post>> futurePosts;

  @override
  void initState() {
    super.initState();
    futurePosts = ApiService().fetchPosts();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF6249E9),
      appBar: AppBar(
        backgroundColor: Color(0xFF6249E9),
        title: const Text(
          'Posts',
          style: TextStyle(color: Colors.white),
        ),
        iconTheme: IconThemeData(color: Colors.white),
        centerTitle: true,
      ),
      body: FutureBuilder<List<Post>>(
        future: futurePosts,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(
                child: CircularProgressIndicator(
              color: Colors.white,
            ));
          } else if (snapshot.hasError) {
            return Center(child: Text('Error: ${snapshot.error}'));
          } else if (snapshot.hasData) {
            return ListView.builder(
              itemCount: snapshot.data!.length,
              itemBuilder: (context, index) {
                final post = snapshot.data![index];

                String dateString = post.dateGmt;

                DateTime dateTime = DateTime.parse(dateString);

                String formattedDate =
                    DateFormat('MMMM d, y h:mm a').format(dateTime);

                return Container(
                  margin: const EdgeInsets.all(8),
                  child: Card(
                    margin: EdgeInsets.fromLTRB(20, 5, 20, 5),
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            post.title,
                            style: const TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            formattedDate,
                            style: const TextStyle(
                              fontSize: 12,
                              color: Color.fromARGB(255, 116, 116, 116),
                            ),
                          ),
                          const SizedBox(height: 10),
                          Text(
                            post.excerpt,
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              },
            );
          } else {
            return const Center(child: Text('No posts available'));
          }
        },
      ),
    );
  }
}
