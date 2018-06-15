package datos;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import ObjetosTablas.Usuarios;

public class UsuariosDAO {

	public Usuarios validar(String user, String pwd) {
		String sql="select id,Nombre,Apellidos,Email,Email,Tel,Dir,User,Pass,Tipo "
				+ "from usuario where User=? and Pass=?";
		Usuarios u=new Usuarios();
		try{
			ConexionBD cn=new ConexionBD();
			PreparedStatement ps=cn.getCn().prepareStatement(sql);
			ps.setString(1,user);
			ps.setString(2, pwd);
			ResultSet rs=ps.executeQuery();
			if(rs.next()){
				u.setId(rs.getInt("id"));
				u.setNombre(rs.getString("Nombre"));
				u.setApellidos(rs.getString("Apellidos"));
				u.setEmail(rs.getString("Email"));
				u.setTelefono(rs.getString("Tel"));
				u.setDireccion(rs.getString("Dir"));
				u.setUser(rs.getString("User"));
				u.setPass(rs.getString("Pass"));
				u.setTipo(rs.getString("Tipo"));
			}
			ps.close();
			rs.close();
			cn.cerrar();
		}
		catch(SQLException e){
			System.out.println("Error:"+e.getMessage());
		}
		return u;
	}

}
