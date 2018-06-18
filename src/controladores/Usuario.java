package controladores;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import ObjetosTablas.Usuarios;
import datos.UsuariosDAO;

/**
 * Servlet implementation class Usuario
 */
@WebServlet(name="Usuario",urlPatterns="/Usuario")
public class Usuario extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Usuario() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String op=request.getParameter("op");
		RequestDispatcher rd=null;
		UsuariosDAO udao=new UsuariosDAO();
		switch(op){
	case "i":
		String user=request.getParameter("user");
		String pwd=request.getParameter("pwd");
		
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
	case "nu":
		Usuarios us=new Usuarios();
		us.setNombre(request.getParameter("nombre"));
		us.setApellidos(request.getParameter("apellidos"));
		us.setDireccion(request.getParameter("dir"));
		us.setTelefono(request.getParameter("tel"));
		us.setEmail(request.getParameter("email"));
		us.setUser(request.getParameter("user"));
		us.setPass(request.getParameter("pwd"));
		us.setTipo("u");
		if(udao.insertar(us)){
			//rd=request.getRequestDispatcher("Usuario?op=i&user=${"+us.getUser()+"}&pwd=${"+us.getPass()+"}");
			rd=request.getRequestDispatcher("jsp/Usuarios/login.jsp");	
			
		}
		else{
			rd=request.getRequestDispatcher("jsp/Usuarios/altaUsuario.jsp");		
		}
		break;
	case "na": 
		
		break;
	}
		rd.forward(request, response);
	
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
