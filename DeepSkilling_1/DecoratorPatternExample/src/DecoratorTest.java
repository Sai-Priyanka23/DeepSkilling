public class DecoratorTest {
    public static void main(String[] args){
        Notifier notifier=new EmailNotifier();
        notifier.send();
        Notifier smsNotifier=new SMSNotifierDecorator(new EmailNotifier());
        smsNotifier.send();

    }
}
