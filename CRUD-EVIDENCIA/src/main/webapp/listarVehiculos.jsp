

<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="conexionBD.ConexionMYSQL"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>EVIDENCIA MODULOS DEL SOFTWARE CODIFICADOS Y APROBADOS</title>
    </head>
    <body>
        <table> 
            <tr>
                <th>ID</th>
                <th>Marca</th>
                <th>Modelo</th>
                <th>Color</th>
            </tr>
            
 <%
            
Connection conexion = ConexionMYSQL.obtenerConexion();
 
Statement statement = conexion.createStatement();
 


String sql = "SELECT * FROM vehiculo";

ResultSet resultSet = statement.executeQuery(sql);



List<Object[]> registros = new ArrayList<>();

int id = 0;

String marca = "";

String modelo = "";

String color = "";

while(resultSet.next()){

id = resultSet.getInt("id");

marca = resultSet.getString("marca");

modelo = resultSet.getString("modelo");

color = resultSet.getString("color");
                
                Object[] registro = {id, marca, modelo, color};
                registros.add(registro);
                
                
                }



                %>
            
                <%for(Object[] registro:registros) {%>
                    
                <tr>
                    <td><%=registro[0]%></td>
                    <td><%=registro[1]%></td>
                    <td><%=registro[2]%></td>
                    <td><%=registro[3]%></td>
                    <td>
                        <a href="eliminarVehiculo.jsp?id=<%=id%>">Eliminar</a>
                        <a href="editarVehiculo.jsp?id=<%=id%>">Editar</a>
                        <a href="agregarVehiculo.html">Agregar"</a>   
                    </td>   
                </tr><%}%> 
                
                
                
        </table>  
    </body>
</html>
