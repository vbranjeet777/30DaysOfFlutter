class Item{
  final String id;
  final String name;
  final String desc;
  final num price;
  final String color;
  final String image;

  Item({required this.id, required this.name, required this.desc, required this.price, required this.color, required this.image});

 
}
final products =[
  Item(
    id:"Ranjeet001",
    name:"iPhone 12 Pro",
    desc:"Details of iPhone 12 pro",
    price:999,
    color:"#33505a",
    image:"https://www.istockphoto.com/photos/iphone-12-pro",
  )
   ];