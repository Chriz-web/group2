abstract class vehicle {
    String sound();
}
    class Car extends vehicle {
        @override
        String sound() {
      return "Car: Broom Broom!";
    }
    }
    class Bike extends vehicle {
        @override
        String sound() {
            return "Bike: Boo Boo!";
        }
    }
      
      class Truck extends vehicle {
        @override
        String sound() {
            return "Truck: Honk Honk!";
        }
      }
   
    void main() {
        var c = Car();
        var b = Bike();
        var t = Truck();

        print(c.sound());
        print(b.sound());
        print(t.sound());


    }


 class Node{
public int info;
public Node link;

public Node(int data){
info = data;
link = null;

}
}

class StackL {
private Node top;

public StackL(){
top = null;

}
 public boolean isEmpty(){
 return (top == null);
 }
 public void push(int data){
    Node temp = new Node(data);
 if (!isEmpty()){
 temp.link = top;
 }
 top = temp;
 }
 
 public int pop() throws Exception{
 int retValue;
 if (isEmpty()){
 throw new Exception(message: "Stack is empty");
 }else{
 retValue = top.info;
 top = top.link;
 }
 return retValue;
 }
  public int peek()throws Exception{
  if (isEmpty()){
  throw new Exception(message: "Stack is empty");
  }
  return top.info;
  }
  public void display(){
  Node p;
  if (!isEmpty()){
  p = top;
  while (p !=null){
  System.out.println(p.info);
  p = p.link;
  }
  }else{
  System.out.println(message: "Stack is empty");
 }
  }
 public int size(){
 Node p;
 int count = 0;
 p = top;
 while(p != null)
 count++;
 p = p.link;
 }
return count;
   }
 }
 public class Main1{
	 public static void main(String[]args){
		 StackL st = new StackL();
		 try{
			 st.push(1);
			 st.push(2);
			 st.push(3);
			 st.push(4);
			 
			 System.out.println("Stack item: ");
			 st.display();
			 
			 System.out.println("Top item: " +st.peek());
			 System.out.println("Total item: "+st.size());
			 System.out.println("Poop item: "+st.pop());
			 
			 
			 System.out.println("Stack item: ");
			 st.display();
			 st.push(4);
			 st.push(5);
			 
			 System.out.println("Stack item: ");
			 st.display();
			 System.out.println("Poop item: "+st.pop());
			 System.out.println("Poop item: "+st.pop());
			 System.out.println("Poop item: "+st.pop());
			 System.out.println("Poop item: "+st.pop());
			 System.out.println("Poop item: "+st.pop());
			 
			 System.out.println("Stack item: ");
			 st.display();
			 
		 }catch (Exception e) {
			 			 System.out.println(e.getMessage());
						 
		 }
	 }
 }   


