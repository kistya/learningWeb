<%@ page import="java.util.Date" %>

<%!
private long blockTime = 0;
private int attemptsCount = 0;
private boolean restrictedAccess = false;

private void printRemainingTime(long inpu){
    // out.write("<br><br><center><p>Too many attempts. Please wait sec</p></center>");
}
%>
<head>
  <title>Login page</title>
  <link href="LoginPage.css" rel="stylesheet" type="text/css"/>
</head>
<body>

<%
   String login = request.getParameter("Login");
   String pass = request.getParameter("Pass");
   String errorText = "";
   boolean showForm = true;
   long timeElapsedSinceBlock=0;
   String errorEmail="";
   String errorPass = "";

   if (login!=null) {
       if (login.equals("a@a.com") && pass.equals("111")){

           attemptsCount=0;
           restrictedAccess = false;
           showForm = false;
           blockTime = 0;

        %>
        <script type = "text/javascript">
                   window.open("../App/ImageSlider/ImageSlider.jsp","_self");
        </script>
        <%

       }
       else {
           if (pass == "") {
               errorPass = "Please try correct credentials";
           }
           else{
               errorEmail = "Please try correct credentials";
           }
           attemptsCount++;
           showForm = true;
       }


       if (attemptsCount >=3) {
            restrictedAccess = true;
            showForm = false;

            if (blockTime == 0) {
                Date blockT = new Date();
                long blockTime = blockT.getTime();
            }
            else {
                Date timeNow = new Date();
                timeElapsedSinceBlock = (timeNow.getTime()-blockTime)/1000;
                if (timeElapsedSinceBlock <= 20){
                    restrictedAccess = true;
                }
                else{
                    attemptsCount=0;
                    restrictedAccess = false;
                    blockTime = 0;
                }
            }

            if (restrictedAccess){
                showForm = false;
            }
            else {
                showForm = true;
            }
       }
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
                    <tr>
                        <td colspan="2"> <center><p><%out.write(errorText);%></p></center> </td>
                    </tr>
                    <tr><td colspan="2">
                            <input type = "email" name="Login" placeholder="Email (try a@a.com)" style = "inputFields"/>
                            <%if (!errorEmail.equals("")){
                                out.write("<center><div><span>" + errorEmail + "</span></div></center>");
                            }%>
                    </td></tr>
                    <tr><td colspan="2">
                        <input type = "password" name="Pass" placeholder="Pass (try 111)" style = "inputFields"/>
                        <%if (!errorPass.equals("")){
                            out.write("<center><div><span>" + errorPass + "</span></div></center>");
                        }%>
                    </td><td></td></tr>


                    <tr><td colspan="2"> <input type="submit" id="okButton"/> </td><td></td></tr>

                    <tr>
                        <td class="highCells"><a href="ForgotPass.jsp">Forgot password?</a></td>
                        <td class="highCells"><a href="RegistrationPage.jsp">I'm a new user</a></td>
                    </tr>

                 </table>
            </form>
        </div>
        </div>

   <%
    }
    out.write("<center><div><span>Attempt #" + attemptsCount + "</span></div></center>");
   %>
</body>
