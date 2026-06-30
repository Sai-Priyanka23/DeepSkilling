public class TestLogger {
    public static void main(String[] args){
        Logger logger1=Logger.getInstance();
        Logger logger2=Logger.getInstance();
        logger1.display();
        logger2.display();
        System.out.println(logger1==logger2);
    }
}
