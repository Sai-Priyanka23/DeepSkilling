public class ProxyTest {
    public static void main(String[] args){
        image img=new ProxyImage("mountain.jpg");
        System.out.println("First Display");
        img.display();
        System.out.println("Second Display");
        img.display();
    }
}
