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
int ans=0;
String g=request.getParameter("answer");
if(g.equals("larry page"))
{
  ans=+1;
  
}
else{
ans=0;
}



/*String fetch;
String reg_no;
Statement st=null;
  fetch="select reg_no from reg_table";
st.executeQuery(fetch);
ResultSet rs=st.getResultSet();
while(rs.next())
{
out.println("fetched");
reg_no=rs.getString("reg_no");

}*/



 Statement st=con.createStatement();
/*int i=st.executeUpdate("insert into question(reg_no,ans) values('"+reg_no+"','"+ans+"')");
out.println("inserted");*/




session.setAttribute("score",ans);
out.println(ans);

String reg_no=(String) session.getAttribute("reg_no");
session.setAttribute("reg_no",reg_no);

%>

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
  border-radius: none;


}
#font{
  font-size: 25px;
}
#op{
  padding-left: 100px;
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
<form action="ques3.jsp" method="POST">


<div class="container" id="font">

QUESTIONS
</div>
<br><br>
<div class="container">
<div class="col-xs-10">


2.blinking symbol on the computer screen is called...

     
      </div>
      </div>
    <br>

<div class="container">
  <div class="row">
    <div class="col-sm-4">
      
    </div>
    <div class="col-sm-4" id="op">
      <div class="row" id="op1">
<input type="radio" name="answer" value="mouse" required>mouse
</div>
<div class="row" id="op2">

<input type="radio" name="answer" value="logo" required >required
</div>
<div class="row" id="op1">
<input type="radio" name="answer" value="cursor" required>cursor
</div>
<div class="row" id="op2">

<input type="radio" name="answer" value="logo" required>logo
</div>

    

    

    <div class="row">
<input type="submit" value="submit" id="sub">
</div>

    </div>
    <div class="col-sm-4"></div>
  </div>
</div>
</body>
</ceter>
</form>
</body>
</html>



