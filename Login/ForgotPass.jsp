<head>
   <title>Forgot pass page</title>
   <link href="ForgotPass.css" rel="stylesheet" type="text/css">
</head>
<body>

<%
   String login = request.getParameter("Login");
   boolean showForm = true;
   boolean loginExists = true;

   if ( (loginExists) && (login!=null) && (login!="") ) {
           out.write("<br><br><center><p>You will receive an email with further instructions if an account is associated with specified email</p></center>");
           showForm = false;
   }
   else {
       showForm = true;
   }


   if (showForm) {
%>



        <div class="grandParentContaniner">
        <div class="parentContainer">
           <form action = "" method = "POST" >    <!-- POST don't show params in url -->
                 <table>
                    <tr><td> <input type = "email" name="Login" placeholder="Email" style = "inputFields"/> </td></tr>

                    <tr><td> <input type="submit" value="Submit" id="okButton"/> </td><td></td></tr>

                    <tr>
                        <td class="highCells"><a href="LoginPage.jsp">Go back to Login page</a></td>
                    </tr>

                 </table>
            </form>
        </div>
        </div>



   <%
    } else {
        %>
        <br><br>
        <center><a href="LoginPage.jsp">Go back to Login page</a><center>
    <% }
   %>
</body>
