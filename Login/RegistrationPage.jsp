<%!
private boolean containsNumbers(String inputt){
    String[] numbers = {"1","2","3","4","5","6","7","8","9","0"};
    for (int i = 0; i<numbers.length; i++){
        if (inputt.contains(numbers[i])){
            return true;
        }
    }
    return false;
}

private boolean containsLetters(String inputt){
    String[] letters = {"a","b","c","d","e","f","g","h","i","j","k","l","m","n","o","p","j","r","s","t","u","v","w","x","y","z"};
    for (int i = 0; i<letters.length; i++){
        if (inputt.toLowerCase().contains(letters[i])){
            return true;
        }
    }
    return false;
}
%>

<head>
   <title>Registration page</title>
   <link href="RegistrationPage.css" rel="stylesheet" type="text/css">
</head>
<body>

<%
  String login = request.getParameter("Login");
  String pass = request.getParameter("Pass");
  String pass2 = request.getParameter("Pass2");
  String name = request.getParameter("Name");
  String gender = request.getParameter("Gender");
  String area = request.getParameter("Area");
  String commentss = request.getParameter("Comments");
  String check = request.getParameter("Iagree");

  //out.write("Login = "+login + "; pass = " + pass + "; pass2 = " + pass2 + "; Name = " + name + "; gender = " + gender + "; area = " + area + "; comments = " + commentss + "; check = " + check);

  boolean anyErrors = false;
  String errorText = "<ul>";

  String emailError ="";
  String passError = "";
  String pass2Error = "";
  String nameError = "";
  String noAgreementError = "";


  boolean showForm = true;

  if (login!=null){    // - if user has submitted some info and it's not the first time that form is shown

    if (login.length()<=0){
      anyErrors = true;
      emailError = "Please specify your email;";
    }

    if (pass.length()<8){
      anyErrors = true;
      passError = "Password should contain 8 symbols;";
    }
    else {
        if (!containsNumbers(pass)){
            anyErrors = true;
            passError = "Password should contain at least 1 number;";
        }
        if (!containsLetters(pass)){
            anyErrors = true;
            passError = "Password should contain at least 1 latin letter;";
        }
    }

    if (!pass2.equals(pass)){
      anyErrors = true;
      pass2Error = "Passwords do not match;";
    }

    if (name.length()<=0){
      anyErrors = true;
      nameError = "Please specify your name;";
    }

    // if (gender==null){
    //   anyErrors = true;
    //   errorText += "<li>Gender is not selected;</li>";
    // }

    if (area.length()<=0){
      anyErrors = true;
      errorText += "<li>Area is empty;</li>";
    }

    // if (commentss.length()<=0){
    //   anyErrors = true;
    //   errorText += "<li>There are no comments;</li>";
    // }

    if (check==null){
      anyErrors = true;
      noAgreementError += "Your agreement is needed to proceed;";
    }

    // errorText += "</ul>";

    if (anyErrors){
      // out.write(errorText);
    }
    else {showForm = false;}
  }


  /*
show timeout on login page
  check if it's email
pass should match
pass should contain letters, numbers
не сбрасывать значения

+ проверка со стороны клиента с html5 tags
  */

  if (showForm){
%>

    <div class="grandParentContaniner">
    <div class="parentContainer">

    <form action = "" method = "POST">    <!-- POST don't show params in url -->
        <table>
            <tr><td colspan="2">
                <input type = "email" name="Login" placeholder="Email" value = "<%=(login==null?"":login)%>" class="inputFields"/>
                <%if (!emailError.equals("")){
                    out.write("<center><div><span>" + emailError + "</span></div></center>");
                }%>
            </td></tr>

            <tr><td colspan="2">
                <input type = "password" name="Pass" placeholder="Pass" value = "<%=(pass==null?"":pass)%>" class="inputFields"/>
                <%if (!passError.equals("")){
                    out.write("<center><div><span>" + passError + "</span></div></center>");
                }%>
            </td></tr>

            <tr><td colspan="2">
                <input type = "password" name="Pass2" placeholder="Verify pass" value = "<%=(pass2==null?"":pass2)%>" class="inputFields"/>
                <%if (!pass2Error.equals("")){
                    out.write("<center><div><span>" + pass2Error + "</span></div></center>");
                }%>
            </td></tr>

            <tr><td colspan="2">
                <input type = "name" name="Name" placeholder="Your name" value = "<%=(name==null?"":name)%>" class="inputFields"/>
                <%if (!nameError.equals("")){
                    out.write("<center><div><span>" + nameError + "</span></div></center>");
                }%>
            </td></tr>

            <tr>
                <td>
                    <input type="radio" id="male" name="Gender" value = "Male" checked <%=((gender!=null) && (gender.equals("Male"))?"checked":"")%> class="radioB"/>
                    <label for="male" class="radio">Male</label>
                </td>
                <td>
                    <input type="radio" id="female" name="Gender" value= "Female" <%=((gender!=null) && (gender.equals("Female"))?"checked":"")%> class="radioB"/>
                    <label for="female" class="radio">Female</label>
                </td>
            </tr>

            <tr><td colspan="2">
                <label for="selectForm" class= "radioB">You are from:</label>
                <select name="Area" id="selectForm" value = "<%=(area==null?"":area)%>" class="dropDownList">
                    <option value="Other"<%=(  area!=null && area.equals("Other")  ?"selected":"") %> >Other</option>
                    <option value="LNR"  <%=(  area!=null && area.equals("LNR")  ?"selected":"") %> >LNR</option>
                    <option value="DNR"  <%=(  area!=null && area.equals("DNR")  ?"selected":"") %> >DNR</option>
                </select>
            </td></tr>

            <tr><td colspan="2">
                <textarea name="Comments" rows="5" cols="55" placeholder="Any comments?" class = "textArea"><%out.write((commentss!=null?commentss:""));%></textarea>
            </td></tr>

            <tr>
                <td colspan="2">
                    <input type="checkbox" id="agreeWithEvrth" name="Iagree" value = "checkedd" <%=(check!=null?"checked":"")%> class="radioB"/>
                    <label for="agreeWithEvrth" class="radio">I agree to donate my kidney</label>
                    <%if (!noAgreementError.equals("")){
                        out.write("<center><div><span>" + noAgreementError + "</span></div></center>");
                    }%>
                </td>
            </tr>


            <tr>
                <td> <input type="reset" value="Reset" class ="buttons"/> </td>
                <td> <input type="submit" value="Register" class ="buttons"/> </td>
            </tr>

            <tr><td></td> <td> <div class = "backToLoginPage"> <a href=LoginPage.jsp>Go back to Login page</a></div> </td></tr>

    </form>
    </div>
    </div>




<%
}
%>
</body>
