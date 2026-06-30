public class BuilderTest {
    public static void main(String[] args){
        Computer c1=new Computer.Builder().setCPU("intel i5").setRAM("8GB").setStorage("512GB").build();
        c1.display();
        Computer c2=new Computer.Builder().setCPU("intel i7").setRAM("16GB").setStorage("1TB").build();
        c2.display();
    }
}
