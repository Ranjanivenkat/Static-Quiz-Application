<%@page import="java.sql.*"%>
    <%@ page import="java.util.*" %>
    <%@ page import="java.sql.*" %>
    <%@ page import="java.io.*" %>
    <%@ page import="java.lang.*"%>
    <%@ page import="javax.servlet.*"%>
    <%@ page import="javax.servlet.http.*"%>
      <html>
    <table bordercolor="red" border="1">
    <%
    try
    {
    Class.forName("com.mysql.jdbc.Driver").newInstance();
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/quiz","root","");
    Statement st=con.createStatement();
    ResultSet rs=st.executeQuery("SELECT * FROM question ORDER BY RAND() limit 1");
    out.println("con");
    while(rs.next())
    {
        //String q=rs.getString("question");
        //ResultSetMetaData rsmd=rs.getMetaData();
        //out.println(colcount);
        %>
    </td><td><%=rs.getString("ques")%></td>
    <%out.println("con");%>
    <td><INPUT TYPE=RADIO NAME=\""+n+"\" VALUE=\""+"a\"   checked=\"checked\">&nbsp;(a)&nbsp;<code>"<%=rs.getString("op1") %>"</code><br></td>
    <td><INPUT TYPE=RADIO NAME=\""+n+"\" VALUE=\""+"a\"   checked=\"checked\">&nbsp;(b)&nbsp;<code>"<%=rs.getString("op2") %>"</code><br></td>
    <td><INPUT TYPE=RADIO NAME=\""+n+"\" VALUE=\""+"a\"   checked=\"checked\">&nbsp;(c)&nbsp;<code>"<%=rs.getString("op3") %>"</code><br></td>
    <td><INPUT TYPE=RADIO NAME=\""+n+"\" VALUE=\""+"a\"   checked=\"checked\">&nbsp;(d)&nbsp;<code>"<%=rs.getString("op4") %>"</code><br></td>
    <td><INPUT TYPE=RADIO NAME=\""+n+"\" VALUE=\""+"a\"   checked=\"checked\">&nbsp;(e)&nbsp;<code>"<%=rs.getString("op4") %>"</code><br></tr>
    <tr><td ><input type="submit" value="Finished"></td></tr>
    <tr><td ><input type="button" value="Prevoius"></td></tr>
    <tr><td ><input type="button" value="Next"></td></tr>
    <%
    }
    }
    catch(Exception e)
    {
    out.println("err");
    }
    %>
    
    </table>
    </form>
    </html>
