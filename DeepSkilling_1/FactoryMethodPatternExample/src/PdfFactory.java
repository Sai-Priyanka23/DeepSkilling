public class PdfFactory extends DocumentFactory{
    Document createDocument(){
        return new pdfDocument();
    }
}
