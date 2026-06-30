public class PhonePayAdapter implements PaymentProcessor {
    private PhonePay phonePay;
    public PhonePayAdapter(){
        phonePay=new PhonePay();
    }
    public void processPayment(){
        phonePay.payMoney();
    }
}
