
<%@page import="conexionBD.ConexionMYSQL"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
     
        <%
        
       String idParam = request.getParameter("id");
          
       int id = Integer.parseInt(idParam);
            

       Connection conexion = null;

       Statement statement = null;
       

        ResultSet resultSet = null;
        

      conexion = ConexionMYSQL.obtenerConexion();   

      statement = conexion.createStatement();
      

      String sql = "SELECT * FROM vehiculo WHERE id ="+id;
        

      resultSet = statement.executeQuery(sql);



        String marca="";

        String modelo="";
        
        String color="";

             

                if(resultSet.next()){
                
                marca = resultSet.getString("marca");
                 modelo = resultSet.getString("modelo");
                  color = resultSet.getString("color");
            }


            %>
        
              <form action="guardarEdicion.jsp" method="post">
            
                  <input type="hidden" name="id" value="<%=id%>">        
                  
                  
            <label for="marca">MARCA</label>
            <input type="text" name="marca" value="<%=marca%>">    
            
            
            <label for="modelo">MODELO</label>
            <input type="text" name="modelo" value="<%=modelo%>">  
            
             <label for="color">COLOR</label>
            <input type="text" name="color" value="<%=color%>">  
            
             <input type="submit" value="Editar">  
            
        </form>
        
        
        
        
    </body>
</html>
