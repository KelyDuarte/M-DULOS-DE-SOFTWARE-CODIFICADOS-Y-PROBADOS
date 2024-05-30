
<%@page import="java.sql.Statement"%>
<%@page import="conexionBD.ConexionMYSQL"%>
<%@page import="java.sql.Connection"%>
<%
      String idParam = request.getParameter("id");
          
       int id = Integer.parseInt(idParam);
       

Connection conexion = ConexionMYSQL.obtenerConexion();

Statement statement = conexion.createStatement();

String sql = "DELETE FROM vehiculo WHERE id ="+id;

statement.executeUpdate(sql);


response.sendRedirect("listarVehiculos.jsp");






%>