Future<void> fetchData(
  Function bringingData,
  Function completionCallback,
) async {          // এখানে bringingData এবং completionCallback দুইটি call back ফাংশন বানিয়েছি,
  bringingData(); // এখানে callback করেদিয়েছি। 
  await Future.delayed(Duration(seconds: 2));
  completionCallback(); // এখানে callback করেদিয়েছি। (দিতিয় বার)
}
