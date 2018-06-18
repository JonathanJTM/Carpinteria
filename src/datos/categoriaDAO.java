package datos;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;

public class categoriaDAO {
	

	public categoriaDAO() {
		
	}

	public String consultaGeneral(){
		String sql="select id,Nombre "
				+ "from categoria";
		JSONArray array=new JSONArray();
		try{
			ConexionBD con=new ConexionBD();
			Statement sentencia=con.getCn().createStatement();
			ResultSet rs=sentencia.executeQuery(sql);
			while(rs.next()){
				JSONObject json=new JSONObject();
				json.put("id", rs.getInt("id"));
				json.put("Nombre", rs.getString("Nombre"));
				array.add(json);	
			}
			sentencia.close();
			rs.close();
			con.cerrar();
		}
		catch(SQLException e){
			System.out.println("Error al ejecutar la consulta"
					+e.getMessage());
		}
		return array.toString();
	}
}
