<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.Statement"%>
<%@ page import="java.sql.Connection"%>
<%@ page import="java.sql.DriverManager"%>
<%@ page import="java.sql.ResultSet"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="shortcut icon" href="http://localhost:8080/UrunTakip/40295178-neon-letter-u-blue-on-a-black-background.jpg" type="image/x-icon"/>
<link rel="stylesheet" href="table.css">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<meta charset="utf-8">

<script
	src="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"
	integrity="sha384-aJ21OjlMXNL5UyIl/XNwTMqvzeRMZH2w8c5cRVpzpU8Y5bApTppSuUkhZXN0VxHd"
	crossorigin="anonymous"></script>
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>urunn takip programi</title>
<meta name="author" content="beril">
<link rel="stylesheet" href="uruntakp.css">
<link rel="stylesheet" href="mak.css">

</head>
<body>
	<div align="center">


		 <div align="center"><img src="logoo.jpg" alt="" width="250" height="125" />
		<div class="ortala">
			<div class="form2">

				<form action="Makine" method="POST">
					<table width="630" border="0">
						<tr>
							<td class="renk" width="180">Makine Ismi:</td>
							<td width="270"><input name="makineIsmi" type="text" /></td>
							<td width="180">&nbsp;</td>
						</tr>
						<tr>
							<td class="renk" width="180">Gunluk Urun:</td>
							<td width="270"><input name="gunlukUrun" type="text" /></td>
							<td width="180">&nbsp;</td>
						</tr>
						<tr>
							<td class="renk" width="180">Calisma Saati:</td>
							<td width="270"><input name="calismaSaati" type="text" /></td>
							<td width="180">&nbsp;</td>
						</tr>
						<tr>
							<td class="renk" width="180">Makine Calisani:</td>
							<td width="270"><input name="makineCalisani" type="text" /></td>
							<td width="180">&nbsp;</td>
						</tr>
						<tr>
							<td>&nbsp;</td>
							<td><input class="btn" type="submit" id="submit"
								value="makine ekle" /></td>
							<td>&nbsp;</td>
						</tr>
					
					</table>
				</form>
			</div>
		</div>
		</div>
		

	</div>
	  <div align=center>             
      <form method="get">

<table class="style" border="2">
   <tr>
        <td>Makine Ismi</td>
        <td>Gunluk Urun</td>
        <td>Calisma Saati</td>
        <td>Makine Calisani</td>
   </tr>
   <%
   try
   {
       Class.forName("com.mysql.jdbc.Driver");
       String url="jdbc:mysql://localhost:3306/mydb";
       String username="root";
       String password="isiLcagdas";
       String query="select * from makine";
       Connection conn=DriverManager.getConnection(url, username, password);
       Statement stmt=conn.createStatement();
       ResultSet rs=stmt.executeQuery(query);
       while(rs.next())
       {
   %>
   
   			<p>
           <tr>
            <td><%out.println(rs.getString("makineIsmi")); %></td>
          
           <td><%out.println(rs.getString("gunlukUrun")); %></td>
          
           <td><%out.println(rs.getString("calismaSaati")); %></td>
           
           <td><%out.println(rs.getString("makineCalisani")); %></td></tr>
           </p>

   <%
       }
   %>
   </table>
   <%
        rs.close();
        stmt.close();
        conn.close();
   }
   catch(Exception e)
   {
        e.printStackTrace();
   }
   %>
</form>
<br>
<div class="form2">
<form method="get" action="http://localhost:8080/UrunTakip/readXML.jsp">
    <button class="btn" type="submit">D�vize Git</button>
</form>
</div>

</div>




</body>
</html>