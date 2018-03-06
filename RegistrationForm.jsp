<head>
  <title>k_page with some form</title>

</head>
<body>

<%
  String login = request.getParameter("Login");
  String pass = request.getParameter("Pass");
  String pass2 = request.getParameter("Pass2");
  String name = request.getParameter("Name");
  String gender = request.getParameter("gender");
  String area = request.getParameter("Area");
  String comments = request.getParameter("Comments");
  String check = request.getParameter("stupid_checkbox");

  out.write("Login = "+login + "; pass = " + pass + "; pass2 = " + pass2 + "; Name = " + name + "; gender = " + gender + "; area = " + area + ";comments = " + comments + "; check = " + check);

  boolean anyErrors = false;
  String errorText = "<ul>";
  boolean showForm = true;

  if (login!=null){

    if (login.length()<=0){
      anyErrors = true;
      errorText += "<li>Login is empty;</li>";
    }

    if (pass.length()<=0){
      anyErrors = true;
      errorText += "<li>Pass is empty;</li>";
    }

    if (pass2.length()<=0){
      anyErrors = true;
      errorText += "<li>Pass2 is empty;</li>";
    }

    if (name.length()<=0){
      anyErrors = true;
      errorText += "<li>name is empty;</li>";
    }

    if (gender==null){
      anyErrors = true;
      errorText += "<li>Gender is not selected;</li>";
    }

    if (area.length()<=0){
      anyErrors = true;
      errorText += "<li>Area is empty;</li>";
    }

    if (comments.length()<=0){
      anyErrors = true;
      errorText += "<li>There are no comments;</li>";
    }

    if (check==null){
      anyErrors = true;
      errorText += "<li>Checkbox is not selected;</li>";
    }

    errorText += "</ul>";

    if (anyErrors){
      out.write(errorText);
    }
    else {showForm = false;}
  }


  /*is it email
pass should match
pass should contain letters, numbers
не сбрасывать значения

+ проверка со стороны клиента с html5 tags
  */

  if (showForm){
%>


  <form action = "" method = "POST">    <!-- POST don't show params in url -->
  <div class = "formattingClass">



    <input type = "text" name="Login" placeholder="Login" value = "<%=(login==null?"":login)%>"/></br>
    <input type = "password" name="Pass" placeholder="Pass"/></br>
    <input type = "password" name="Pass2" placeholder="Retype pass"/></br>
    <input type = "name" name="Name" placeholder="Your name"/></br>

    <input type="radio" name="gender" value="Male" <%=((gender!=null) && (gender.equals("Male"))?"checked":"")%> > Male
    <input type="radio" name="gender" value="Female" <%=((gender!=null) && (gender.equals("Female"))?"checked":"")%> > Female<br>

    <select name="Area">
      <option value="LNR" <%=(  area!=null && area.equals("LNR")  ?"selected":"") %> >LNR</option>
      <option value="DNR" <%=(  area!=null && area.equals("DNR")  ?"selected":"") %> >DNR</option>
      <option value="Other">Other</option>
    </select><br>

    <textarea name="Comments"></textarea><br>
    <input type="checkbox" name="stupid_checkbox" value="ok"> Install smth useless?


    <input type="reset" value="Reset evrth"/></br>
    <input type="submit" value="This is submit button"/></br>





  </div>
  </form>

<%
}
%>

  </body>
