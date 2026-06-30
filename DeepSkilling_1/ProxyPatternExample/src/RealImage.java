public class RealImage implements image{
    private String filename;
    public RealImage(String filename){
        this.filename=filename;
        loadFromServer();
    }
    public void loadFromServer(){
        System.out.println("Loading Image"+filename+"from remote server...");
    }
    public void display(){
        System.out.println("Displaying "+filename);
    }
}
