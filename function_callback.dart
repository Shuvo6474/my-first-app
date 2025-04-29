import 'package:call_back/pages/api_call.dart';
import 'package:flutter/material.dart';

class FunctionCallback extends StatefulWidget {
  const FunctionCallback({super.key});

  @override
  State<FunctionCallback> createState() => _FunctionCallbackState();
}

class _FunctionCallbackState extends State<FunctionCallback> {
  String status = "কোন কাজ শুরু হয়নি";

  void bringingData() {
    setState(() {
      status = "ডাটা আনা হচ্ছে";
    });
  }

  void completionCallback() {
    setState(() {
      status = "কাজ শেষ হয়েছে";
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Material App Bar')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(status),
            ElevatedButton(
              onPressed:
                  () => fetchData(
                    bringingData,
                    completionCallback,
                  ), // আমি উপরে যেকয়টা ভেরিয়েবল ফাংশন তইরি করেছি সেগুলাকে এখানে পাস করতে হয়। কিন্তু fetchData function যেই পেজ এ আছে
              child: Text("ডাটা লোড করুন"),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            status = "কোন কাজ শুরু হয়নি";
          });
        },
        child: Text("refresh", style: TextStyle(fontSize: 13.0),
      ),),

    );
   
  }
}
