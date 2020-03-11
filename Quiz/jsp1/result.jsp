


<%@ page import="quiz.sql.*" %>
<%@ page import="java.util.*" %>
<%@ page import="java.sql.*" %>
<%@ page import="java.io.*" %>
<%@ page import="java.lang.*"%>
<%@ page import="javax.servlet.*"%>
<%@ page import="javax.servlet.http.*"%>
<%@ page import="quiz.sql.*"%>
<%
String reg_no=(String) session.getAttribute("reg_no");
session.setAttribute("reg_no",reg_no);

Class.forName("com.mysql.jdbc.Driver");
 Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/static_quiz","root","");

int ans=(Integer)session.getAttribute("score");
String g=request.getParameter("answer");
if(g.equals("assembler"))
{
	ans=ans+1;

}

 Statement st=con.createStatement();
int i=st.executeUpdate("insert into question(reg_no,ans) values('"+reg_no+"','"+ans+"')");
session.setAttribute("score",ans);
int total=ans;
int j=st.executeUpdate("insert into result(reg_no,total) values('"+reg_no+"','"+total+"')");
%>
<!DOCTYPE HTML>
<html>
<head>

<title>Result</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width,initial-scale=1">
<link rel="stylesheet" href="boot.css">
	<style>
		body{
			background-image: url("img/bg2.jpg");
            background-repeat: no-repeat;
              background-size:100% auto;
  
  color:white;
  font-size: 26;
		}
		#score{
			color:white;
		}
	</style>
	</head>
<body>
	<div class="container">
 
<h2 id="score">YOUR SCORE:<% out.println(total); %></h2>
 
          
   </div>
</body>
</html>

