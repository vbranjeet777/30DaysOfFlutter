 class add{
  int x=10;
  static int y=20;
  static void display(){
    print(y);
    
  }
}
void main()
{
  add.display();
  add obj=add();
  print(obj.x);
 print( add.y);

}