 <%@page import="java.sql.*"%>
<%@page import="java.io.*"%>
<%@page import="javax.servlet.*"%>
<%@page import="javax.servlet.http.*"%>
<%@page import="java.lang.*"%>
<% 
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


}
#font{
  font-size: 25px;
}
#op{
  padding-left: 80px;
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

<form  method="POST"  action="ques2.jsp">

<center>


<div class="container" id="font">
QUESTIONS
<br><br>

<!--<div class="col-xs-10">-->

<center>
    1.Who is the founder of google?
      </center>
    
    <br>


  <div class="row">

    <div class="col-sm-4">
      
    </div>
    <div class="col-sm-4" id="op">
<div class="row" id="op1">


<input type="radio" name="answer" value="larry page"  required>larry page
</div>
<div class="row" id="op2">
<input type="radio" name="answer" value="mark zuckerberg" requeried>mark zuckerberg
</div>
<div class="row"  id="op3"> 
<input type="radio" name="answer" value="sergey brin" requeried>sergey brin
</div>
<div class="row"  id="op4">
<input type="radio" name="answer" value="jan koum" requeried>jan koum
</div>

    
     
    

<div class="row">
<input type="submit" value="submit" id="sub">
</div>
</div>
<div class="col-sm-4">
</div>
</div>
</center>
</form>
</body>
</html>



