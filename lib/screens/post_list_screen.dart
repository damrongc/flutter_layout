import 'package:flutter/material.dart';
import 'package:flutter_layout/models/models.dart';
import 'package:flutter_layout/repository/repository.dart';

class PostListScreen extends StatefulWidget {
  @override
  _PostListScreenState createState() => _PostListScreenState();
}

class _PostListScreenState extends State<PostListScreen> {
  PostRepository _postRepository = new PostRepository();

  @override
  void initState() {
    super.initState();
    // var posts = await _postRepository.getPost();
    // print(posts);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Post List"),
        ),
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add),
          onPressed: () {},
        ),
        body: Container(
          child: FutureBuilder(
            future: _postRepository.getPost(),
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.waiting) {
                return Center(
                  child: CircularProgressIndicator(
                    backgroundColor: Colors.red,
                  ),
                );
              } else {
                List<Post> posts = snapshot.data;
                return ListView.separated(
                  separatorBuilder: (context, _) => Divider(height: 2, color: Colors.green),
                  itemCount: posts.length,
                  itemBuilder: (context, int index) {
                    // return InkWell(
                    //   onTap: () {},
                    //   child: Padding(
                    //     padding: const EdgeInsets.all(30),
                    //     child: Container(child: Text(posts[index].title)),
                    //   ),
                    // );
                    // return Card(child: Text(posts[index].title));
                    return ListTile(
                      leading: CircleAvatar(
                        child: Text(
                          posts[index].userId.toString(),
                          style: TextStyle(fontSize: 20),
                        ),
                      ),
                      title: Text(posts[index].title),
                      subtitle: Text(posts[index].body),
                      trailing: Container(
                        color: Colors.amber,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [Icon(Icons.arrow_forward_ios)],
                        ),
                      ),
                      onTap: () {},
                    );

                    // return Padding(
                    //   padding: const EdgeInsets.all(8.0),
                    //   child: Row(
                    //     crossAxisAlignment: CrossAxisAlignment.center,
                    //     children: <Widget>[
                    //       Expanded(
                    //           flex: 2,
                    //           child: Text(
                    //             posts[index].userId.toString(),
                    //             style: TextStyle(fontSize: 16),
                    //           )),
                    //       Expanded(
                    //           child: Text(
                    //         posts[index].title,
                    //         // textAlign: TextAlign.right,
                    //         style: TextStyle(fontSize: 16),
                    //       )),
                    //       Expanded(
                    //           child: Text(
                    //         "asa",
                    //         textAlign: TextAlign.right,
                    //         style: TextStyle(fontSize: 16),
                    //       )),
                    //       Expanded(
                    //           child: Row(
                    //         mainAxisAlignment: MainAxisAlignment.end,
                    //         children: <Widget>[
                    //           Text(
                    //             "aas",
                    //             textAlign: TextAlign.right,
                    //             style: TextStyle(fontSize: 16),
                    //           ),
                    //           Icon(
                    //             Icons.chevron_right,
                    //             color: Colors.grey[400],
                    //             // size: 20,
                    //           )
                    //         ],
                    //       )),
                    //     ],
                    //   ),
                    // );
                  },
                );
              }
            },
          ),
        ));
  }
}
