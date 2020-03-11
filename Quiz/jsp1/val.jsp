 <%@page import="java.sql.*"%>
<%@page import="java.io.*"%>
<%@page import="javax.servlet.*"%>
<%@page import="javax.servlet.http.*"%>
<%@page import="java.lang.*"%>
<%

//st=null;
        String query;
        String dbreg_no, dbPassword;
	
	//ResultSet rs=null;
            String reg_no1=request.getParameter("regno");
            String password1=request.getParameter("pass");

          
try{
Class.forName("com.mysql.jdbc.Driver");
           Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/static_quiz","root","");
           
           
          Statement st=con.createStatement();

          
           // Statement stmt = (Statement) con.createStatement();
            query = "select reg_no, password from reg_table";
            st.executeQuery(query);
            ResultSet rs = st.getResultSet();
          
            
            while(rs.next()){
            
                dbreg_no = rs.getString("reg_no");
                dbPassword = rs.getString("password");
                 
                
                if(dbreg_no.equals(reg_no1) && dbPassword.equals(password1))
                {
                     
                    session.setAttribute("reg_no", reg_no1);
                     response.sendRedirect("ques1.jsp");
                     
                    
                }


                
            }

            out.println("<script>window.alert('please register here..!'); window.location.href='index.html'</script>");
      //response.sendRedirect("index.html");
   }
   catch(Exception e)
   {
   	out.println("error");
   }

 %>
           
        