package controladores;

import java.awt.image.BufferedImage;
import java.io.BufferedInputStream;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;

import javax.imageio.ImageIO;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.tomcat.util.http.fileupload.IOUtils;

import ObjetosTablas.Productos;
import ObjetosTablas.Usuarios;
import datos.UsuariosDAO;
import datos.productosDAO;
import java.util.Base64;

/**
 * Servlet implementation class Producto
 */
@WebServlet(name="Producto" ,urlPatterns="/Producto")
public class Producto extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Producto() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String op=request.getParameter("op");
		
		RequestDispatcher rd=null;
		productosDAO pdao=new productosDAO();
		switch(op){
	case "altaProducto":
		 String imageString = null;
	        ByteArrayOutputStream bos = new ByteArrayOutputStream();
	        BufferedImage img=ImageIO.read(new File(request.getParameter("file").toString()));
	        try {
	            ImageIO.write(img, "png", bos);
	            byte[] imageBytes = bos.toByteArray();
	            Base64.Encoder encoder = Base64.getEncoder();
	            imageString=encoder.encodeToString(imageBytes);
	            bos.close();
	            Productos p=new Productos();
	            p.setImagen(imageString);
	            p.setNombre(request.getParameter("nombre"));
	            p.setDescripcion(request.getParameter("desc"));
	            p.setPrecio(request.getParameter("pventa"));
	            p.setIdCat(Integer.parseInt(request.getParameter("categ").toString()));
	            pdao.insertar(p);
	            rd=request.getRequestDispatcher("jsp/principales/principalAdmin.jsp");
	        } catch (IOException e) {
	            e.printStackTrace();
	        }
	        rd.forward(request, response);
		break;
	case "consInd":
		        
	            rd=request.getRequestDispatcher("jsp//index.jsp");
	        
	        rd.forward(request, response);
		break;
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
