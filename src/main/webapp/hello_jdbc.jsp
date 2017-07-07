<html>
<head>
    <title>Ejemplo de aacceso ddbb</title>
</head>
<body>
<br />
<% 
String selectSQL = "SELECT ID_AREA,ACTIVO,CREADO_POR,CREADO_EN,MODIFICADO_POR,MODIFICADO_EN FROM dpipruebas.dpipruebas.EVE_AREA";
javax.naming.Context initialContext;
javax.naming.Context environmentContext;
String dataResourceName = "java:comp/env/jdbc/dpipruebas";
javax.sql.DataSource dataSource;
java.sql.Connection conn = null;
try  {

 initialContext = new javax.naming.InitialContext();
 //environmentContext = (javax.naming.Context) initialContext.lookup("java:comp/env");
  Object obj = initialContext.lookup(dataResourceName);
  
  System.err.println(obj.getClass());
  dataSource = (javax.sql.DataSource) initialContext.lookup(dataResourceName);
  conn = dataSource.getConnection();

  
	
	

  java.sql.PreparedStatement preparedStatement = conn.prepareStatement(selectSQL);
  java.sql.ResultSet rs = preparedStatement.executeQuery();
  if(rs.next()){
  	out.println("tengo EVE_AREA: "+rs.getString(1));
	}
  else
  	out.println("No tengo EVE_AREA");

} catch (java.sql.SQLException e) {
            System.err.println(e.getMessage());
} finally {
            // Release connection back to the pool
            if (conn != null) {
                conn.close();
            }
            conn = null; // prevent any future access
}

%>
</body>
</html>
