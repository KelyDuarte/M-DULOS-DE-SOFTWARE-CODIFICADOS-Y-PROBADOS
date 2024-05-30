<%@page import="conexionBD.ConexionMYSQL"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%
    
String marca =request.getParameter("marca");

String modelo =request.getParameter("modelo");

String color =request.getParameter("color");

Connection conexion = null;

PreparedStatement statement = null;


conexion = ConexionMYSQL.obtenerConexion();

String sql = "INSERT INTO vehiculo(marca,modelo,color)VALUES(?,?,?)";

statement = conexion.prepareStatement(sql);

statement.setString(1, marca);
statement.setString(2, modelo);
statement.setString(3, color);

int confirmacion = statement.executeUpdate();

if(confirmacion > 0)
{
out.println("<p>Registro Agregado</p>");
}
%>