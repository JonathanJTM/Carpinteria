package controladores;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import datos.productosDAO;

/**
 * Servlet implementation class Categoria
 */
@WebServlet(name="CategoriaProductos",urlPatterns="/CategoriaProductos")
public class CategoriaProductos extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CategoriaProductos() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String op=request.getParameter("op");
		
		switch(op){
			case "cp":
				productosDAO pdao=new productosDAO();
				int idCat=Integer.parseInt(request.getParameter("id").toString().trim());
				String json=pdao.consultaIndividual(idCat);
				PrintWriter out=response.getWriter();
				response.setContentType("application/json");
				out.println(json);
				out.close();
				break;
			case "c":
					int id=Integer.parseInt(request.getParameter("id"));
					RequestDispatcher rd=null;
					request.setAttribute("id", id);
					rd=request.getRequestDispatcher("jsp/Categorias/consCatPro.jsp");	
					rd.forward(request, response);
					break;
			case "cats":
				pdao=new productosDAO();
				json=pdao.consultaGeneral();
				out=response.getWriter();
				response.setContentType("application/json");
				out.println(json);
				out.close();
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
