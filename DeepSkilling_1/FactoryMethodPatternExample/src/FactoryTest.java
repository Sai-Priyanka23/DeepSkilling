public class FactoryTest {
    public static void main(String[] args){
        DocumentFactory wordFactory=new WordFactory();
        Document word=wordFactory.createDocument();
        word.open();

        DocumentFactory pdfFactory=new PdfFactory();
        Document pdf=pdfFactory.createDocument();
        pdf.open();

        DocumentFactory exelFactory=new ExcelFactory();
        Document excel=exelFactory.createDocument();
        excel.open();
    }
}
