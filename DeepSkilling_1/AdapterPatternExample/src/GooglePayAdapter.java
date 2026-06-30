public class GooglePayAdapter implements PaymentProcessor{
    private GooglePay googlePay;
    public GooglePayAdapter(){
        googlePay=new GooglePay();
    }
    public void processPayment(){
        googlePay.makePayment();
    }
}
