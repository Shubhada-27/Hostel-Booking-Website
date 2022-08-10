<%@ page import = "connection.Connection_provider"%>
<%@ page import = "java.sql.*" %>
<%

    try{
    	Connection con = Connection_provider.getCon();
    	Statement st = con.createStatement();
    	String q1 = "create table users(email varchar(100), gender varchar(10), password varchar(100))";
    	st.execute(q1);
    	System.out.print("table created");
    	con.close();
    }
catch(Exception e)
{
	System.out.print(e);
}




%>