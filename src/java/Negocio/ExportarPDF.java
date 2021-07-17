/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Negocio;

import com.lowagie.text.Document;
import com.lowagie.text.Font;
import com.lowagie.text.FontFactory;
import com.lowagie.text.PageSize;
import com.lowagie.text.Paragraph;
import com.lowagie.text.Phrase;
import com.lowagie.text.pdf.PdfPCell;
import com.lowagie.text.pdf.PdfPTable;
import com.lowagie.text.pdf.PdfTable;
import com.lowagie.text.pdf.PdfWriter;
import java.awt.Color;
import java.io.IOException;
import java.util.List;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Microsoft
 */
public class ExportarPDF {
    private List<Empleado> getempleado;
    
    public ExportarPDF(){
    }

    public ExportarPDF(List<Empleado> getempleado) {
        this.getempleado = getempleado;
    }
    
    
     
    public void writeHeader(PdfPTable pdfTable){
        PdfPCell cell = new PdfPCell();
        cell.setBackgroundColor(Color.darkGray);
        cell.setPadding(6);
        Font font = FontFactory.getFont(FontFactory.HELVETICA_BOLD);
        font.setColor(Color.white);
        
        cell.setPhrase(new Phrase("CODIGO",font));
        pdfTable.addCell(cell);
        cell.setPhrase(new Phrase("NOMBRE",font));
        pdfTable.addCell(cell);
        cell.setPhrase(new Phrase("CORREO",font));
        pdfTable.addCell(cell);
        cell.setPhrase(new Phrase("TELEFONO",font));
        pdfTable.addCell(cell);
        cell.setPhrase(new Phrase("USUARIO",font));
        pdfTable.addCell(cell);
        cell.setPhrase(new Phrase("CONTRASEÑA",font));
        pdfTable.addCell(cell);
        
    }
    public void writeTableData(PdfPTable pdf){
        for(Empleado emp : getempleado){
            pdf.addCell(String.valueOf(emp.getCodigo()));
            pdf.addCell(String.valueOf(emp.getNombre()));
            pdf.addCell(String.valueOf(emp.getCorreo()));
            pdf.addCell(String.valueOf(emp.getTelefono()));
            pdf.addCell(String.valueOf(emp.getUsuario()));
            pdf.addCell(String.valueOf(emp.getContraseña()));
            
        }
    }
    
    public void export (HttpServletResponse response){
        try (Document document = new Document(PageSize.A4)){
            PdfWriter.getInstance(document, response.getOutputStream());
            document.open();
            
            Font font = FontFactory.getFont(FontFactory.HELVETICA);
            font.setSize(20);
            font.setColor(Color.BLUE);
            
            Paragraph p = new Paragraph("Lista de Empleados",font);
            p.setAlignment(Paragraph.ALIGN_CENTER);
            document.add(p);
            
            PdfPTable tre = new PdfPTable(6);
            tre.setWidthPercentage(100f);
            tre.setWidths(new float[] {1.5f,2.5f,3.0f,3.5f,3.5f,3.0f});
            tre.setSpacingBefore(10);
            
            writeHeader(tre);
            writeTableData(tre);
            
            document.add(tre);
            document.close();
        }catch(Exception e){}
    }
    
}
