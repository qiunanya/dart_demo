main(List<String> args) {
  //list类型
   List<String> nams = ["wang","yun","qiu","qiu"];
   List<String> newName = [];
   for (String item in nams) {
       if (!newName.contains(item)) {
           newName.add(item);
       }
   }

   print(newName);

   List<String> arr = List.from(Set.from(nams));
   print(arr);
  //Set类型(对list去重可能会用到Set)
  Set<int> num = {1,2,3,6,55};
   print(num); 

  //Map类型(key/value)
  Map<String,dynamic> info ={
     "name":"why",
     "age":155,
     "height":1.555
  };

  print(info);

}