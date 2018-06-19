package controladores;


import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import datos.UsuariosDAO;
import datos.productosDAO;
import ObjetosTablas.Usuarios;

/**
 * Servlet implementation class Acceso
 */
@WebServlet(name="acceso", urlPatterns="/acceso")
public class Acceso extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Acceso() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String op=request.getParameter("op");
		RequestDispatcher rd=null;
		switch(op){
			case "l":
			rd=request.getRequestDispatcher("jsp/Usuarios/login.jsp");
			break;
			case "index":
				rd=request.getRequestDispatcher("/index.jsp");
				break;
			case "cn":
				rd=request.getRequestDispatcher("jsp/Usuarios/signIn.jsp");
				break;
			case "np":
				rd=request.getRequestDispatcher("jsp/Usuarios/inputFile.jsp");
				break;
			case "mp":
				productosDAO pdao=new productosDAO();
				String img=pdao.consultaIndividual(1);
				rd=request.getRequestDispatcher("jsp/Usuarios/outputFile.jsp");
				request.setAttribute("imagen", img);
				break;
			case "indexA":
				rd=request.getRequestDispatcher("jsp/principales/principalAdmin.jsp");
				break;
			case "indexU":
				rd=request.getRequestDispatcher("jsp/principales/principalUsuario.jsp");
				break;
			case "newProduct":
				rd=request.getRequestDispatcher("jsp/Productos/altaProducto.jsp");
				break;
			
		}
		rd.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		doGet(request, response);
	}

}
