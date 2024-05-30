
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="conexionBD.ConexionMYSQL"%>
<%
    
  String idParam = request.getParameter("id");
          
       int id = Integer.parseInt(idParam);
       
     String marca = request.getParameter("marca");

String modelo = request.getParameter("modelo");

String color = request.getParameter("color");

 Connection conexion = null;

       Statement statement = null;
       

        ResultSet resultSet = null;
        

      conexion = ConexionMYSQL.obtenerConexion();   

      statement = conexion.createStatement();
      
     String sql = "UPDATE vehiculo SET marca='"+marca+"', modelo='"+modelo+"', color='"+color+"' WHERE id ="+id;
     
    statement.executeUpdate(sql);
    
    response.sendRedirect("listarVehiculos.jsp");

%>