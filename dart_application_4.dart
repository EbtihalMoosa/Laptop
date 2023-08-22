import 'dart:io';
void main (){

Map laptop1 ={
  "name":"Dell",
  "size":"110",
  "ram":"16Gp",
  "processor":"133",
  "camera": "14 mg",
  "price": "200"
};
Map laptop2 ={
  "name":"Hp",
  "size":"55",
  "ram":"4 Gp",
  "processor": "255",
  "camera": "20 mg",
  "price": "300"

};
Map laptop3 ={
  "name":"Toshiba",
  "size":"23",
  "ram":"10 Gp",
  "processor": "255",
  "camera": "12 mg",
  "price": "350"
};

print("Welcome :/n This device are avaliable in store:");
List<Map> device =[laptop1, laptop2, laptop3];
for(var laptops in device){
print(laptops["name"]+ " : " + laptops["size"] +" - " + laptops["ram"] +" - " + laptops["processor"] +" - " +
laptops["camera"] +" - " + laptops["price"]);


print("enter your budget: ");
double? budget = double.tryParse(stdin.readLineSync()?? "0");
var newList = device.where((e) => e["price"] <= budget).toList();
for (var e in newList);
print(e["name"] + " : " +e ["price"].toString());

};
}