public class AdapterTest {
    public static void main(String[] args){
        PaymentProcessor p1=new GooglePayAdapter();
        p1.processPayment();
        PaymentProcessor p2=new PhonePayAdapter();
        p2.processPayment();
    }
}
