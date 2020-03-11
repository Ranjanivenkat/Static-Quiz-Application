<%@ page import="quiz.sql.*" %>
<%@ page import="java.util.*" %>
<%@ page import="java.sql.*" %>
<%@ page import="java.io.*" %>
<%@ page import="java.lang.*"%>
<%@ page import="javax.servlet.*"%>
<%@ page import="javax.servlet.http.*"%>
<%@ page import="quiz.sql.*"%>



<%



Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/static_quiz","root","");

int ans=(Integer)session.getAttribute("score");
String g=request.getParameter("answer");

if(g.equals("cursor"))
{ 
 
  ans=ans+1;

}
 Statement st=con.createStatement();
/*int i=st.executeUpdate("insert into question(reg_no,ans) values('"+reg_no+"','"+ans+"')");
out.println("inserted");*/
session.setAttribute("score",ans);
out.println(ans);
String reg_no=(String) session.getAttribute("reg_no");
session.setAttribute("reg_no",reg_no);
%>





<!-- html page -->
<html>
<head>
<meta name="viewport" content="width=device-width,initial-scale=1">
<link rel="stylesheet" href="boot.css">
<style>
body{
background-color:#f9f7f9;
background-image: url("img/bg1.jpg");
background-repeat: no-repeat;
background-size: 100% 100%;
  
  color:black;
  font-size: 23;
  
         }

#sub{
  padding:10px;
  border-radius: 15px;
  background-color:navy;
  color:white;


}
#font{
  font-size: 25px;
}
#op{
  padding-top: 10px;
}
#op1{
  padding-top: 10px;
}
#op2{
  padding-top: 10px;
}
#op3{
  padding-top: 10px;
}
#op4{
  padding-top: 10px;
  padding-bottom: 30px;
  padding-left: 15px;
}
</style>
</head>

<body>
<form  method="POST"  action="ques4.jsp">

<center>

<div class="container" id="font">

QUESTIONS
</div>
<br><br>
<div class="container">
<div class="col-xs-10">
<center>

  3.What displays the contents of the active cell in Excel ?

      </center>
      </div>
      </div>
    <br>

<div class="container" id="op">

<div class="row" id="op1">
<input type="radio" name="answer" value="name box" required>name box
</div>
<div class="row" id="op2">
<input type="radio" name="answer" value="row headings"  required>row headings
</div>
<div class="row"  id="op3"> 
<input type="radio" name="answer" value="formula bar" required>formula bar
</div>
<div class="row"  id="op4">
<input type="radio" name="answer" value="task pane" required>task pane
</div>

    
     
    
</div>
<div class="row">
<input type="submit" value="submit" id="sub">
</div>
</ceter>
</form>
</body>
</html>




