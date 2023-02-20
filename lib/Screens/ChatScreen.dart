import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';
import 'Accounts/SuccessRegistration.dart';

class ChatScreen extends StatefulWidget {
  String? Name;
  ChatScreen({
    required this.Name,
});

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  final FireStore = FirebaseFirestore.instance;
  final String CollectionName = 'Chat';
  TextEditingController MsgController = TextEditingController();


  addMsg() {
    FireStore.collection(CollectionName).add({
      'Msg' : MsgController.text,
      'SenderID' : widget.Name,
    });
    MsgController.clear();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder<QuerySnapshot>(
        stream: FireStore.collection(CollectionName).snapshots(),
        builder: (context, snapshot) {
          return snapshot.hasData
              ? chatBody(snapshot.data)
              : snapshot.hasError
              ? Text('ERROR')
              : Center(
            child: LoadingAnimationWidget.beat(color: Colors.black, size: 100),
          );
        },
      ),
    );
  }

  Widget chatBody(dynamic data) {
    return Padding(
      padding: EdgeInsets.all(0),
      child: Container(
        padding: EdgeInsets.zero,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/Pattern.png'),
            alignment: Alignment.topCenter,
          ),
        ),
        child: Column(
          children: [
            Divider(
              height: 30,
              color: Colors.transparent,
            ),
            Container(
              child: Padding(
                padding: EdgeInsets.only(
                    left: 10
                ),
                child: Align(
                  alignment: Alignment.topLeft,
                  child: IconButton(onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => SuccessRegistration()));
                  },
                    icon: Image.asset('assets/BackButton.png'),
                  ),
                ),
              ),
            ),
            SizedBox(
              width: 650,
              height: 100,
              child: Stack(
                children: <Widget>[
                  Container(
                    padding: const EdgeInsets.all(30),
                    alignment: Alignment.bottomLeft,
                    child: const Text(
                      'Chat',
                      style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 2,
                child: Container(
                  padding: EdgeInsets.only(
                    left: 100,
                  ),
                  alignment: Alignment.bottomRight,
                  child: ListView.builder(
                    itemCount: data.docs.length,
                    reverse: true,
                    itemBuilder: (context, index) {
                      return Align(
                        alignment: widget.Name == data.docs[index]['SenderID']
                            ? Alignment.centerRight
                            : Alignment.centerLeft,
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            border: Border.all(color: Colors.transparent, width: 15, ),
                            gradient: LinearGradient(
                                colors: [
                                  Color(0xFF53E88B),
                                  Color(0xFF15BE77),
                                ]),
                          ),
                        child: Text(
                          data.docs[index]['Msg'] ?? '',
                        ),
                        ),
                      );
                    },
                  ),
                ),
            ),
                SizedBox(
                  width: 370,
                  child: Expanded(
                    child: Align(
                      alignment: Alignment.bottomCenter,
                      child: Row(
                        children: [
                          Expanded(
                            child: TextFormField(
                              controller: MsgController,
                              decoration: InputDecoration(
                                contentPadding: EdgeInsets.symmetric(
                                  vertical: 25,
                                ),
                                suffixIcon: IconButton(
                                  onPressed: (){
                                    addMsg();
                                  },
                                  icon: Image.asset('assets/IconSend.png'),
                                  padding: EdgeInsets.all(15),
                                ),
                                label: Text('Enter your Message',
                                style: TextStyle(
                                  fontSize: 14,
                                ),
                                ),
                                enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(13),
                                    borderSide: BorderSide(color: Theme.of(context).primaryColor)
                                ),
                                filled: true,
                                fillColor: Theme.of(context).primaryColor,
                                border: InputBorder.none,
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(13),
                                  borderSide: BorderSide(color: Colors.transparent),
                      ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
            Divider(
              height: 20,
              color: Colors.transparent,
            )
          ],
        ),
      ),
    );
  }

}
