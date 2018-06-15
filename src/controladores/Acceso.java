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
			case "i":
				String user=request.getParameter("user");
				String pwd=request.getParameter("pwd");
				UsuariosDAO udao=new UsuariosDAO();
				Usuarios u=udao.validar(user, pwd);
				
				if(u.getNombre()==null){
					rd=request.getRequestDispatcher("jsp/Comunes/login.jsp");
				}
				else{
					HttpSession sesion=request.getSession();
					sesion.setAttribute("usuario",u);
					sesion.setMaxInactiveInterval(10*60);
					if(u.getTipo().equals("a")){
						rd=request.getRequestDispatcher("jsp/principales/principalAdmin.jsp");
					}else{
						rd=request.getRequestDispatcher("jsp/principales/principalUsuario.jsp");
					}
				}
				
				break;
			case "l":
			rd=request.getRequestDispatcher("jsp/Comunes/login.jsp");
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
