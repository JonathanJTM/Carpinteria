package datos;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import javax.imageio.ImageIO;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;

import ObjetosTablas.Productos;

public class productosDAO {
	public boolean insertar(Productos p){
		String query="insert into producto values(null,?)";
		boolean ban=false;
		try{
			ConexionBD con=new ConexionBD();
			PreparedStatement ps=con.getCn().prepareStatement(query);
			ps.setString(1, p.getImagen());
			ps.execute();
			ps.close();
			con.cerrar();
			ban=true;
		}
		catch(SQLException e){
			System.out.println("Error:"+e.getMessage());
		}
		return ban;
	}

	public String consultaIndividual(int id) {
		String query=null;
		if(id==1){
			query="select * from producto";
		}else{
			query="select * from producto where idCat="+id;
		}
		
		JSONArray array=new JSONArray();
		try{
			ConexionBD con=new ConexionBD();
			PreparedStatement ps=con.getCn().prepareStatement(query);
			ResultSet rs=ps.executeQuery(query);
			
			String query2="select Nombre,Descripcion from categoria where id="+id;
			PreparedStatement ps2=con.getCn().prepareStatement(query2);
			ResultSet rs2=ps2.executeQuery(query2);
			
			while (rs.next()) {
				JSONObject json=new JSONObject();
				json.put("id", rs.getInt("id"));
				json.put("nom", rs.getString("Nombre"));
				json.put("des", rs.getString("Descripcion"));
				json.put("precio", rs.getString("Precio"));
				json.put("idcat", rs.getInt("idCat"));
				while(rs2.next()){
					json.put("nomCat", rs2.getString("Nombre"));
					json.put("desCat", rs2.getString("Descripcion"));
					break;
				}
				json.put("ima", rs.getString("Imagen"));
				array.add(json);
			}
			ps.close();
			con.cerrar();
			
		}
		catch(SQLException e){
			System.out.println("Error:"+e.getMessage());
		}
		
		return array.toString();
	}
	
}
