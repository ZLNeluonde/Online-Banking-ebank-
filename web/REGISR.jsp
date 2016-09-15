<%-- 
   : reg
    Created on : 19 Jul 2016, 1:52:16 PM
    Author     : Mpho
--%>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Registration</title>
        <link href ="login.css" rel ="stylesheet" type ="text/css"/>
        <link href ="main.css" rel ="stylesheet" type ="text/css"/>
    </head>
    <body>  
        
        <div id="wrapper">
         <h1>EBANK<small>The Future is now</small></h1>
  <div id="content">
      <nav>
  <ul id = "justaNav">
    <li><a href="REGISR.jsp">Sign Up</a></li>
    <li><a href="NEW.jsp">Sign in</a></li>	
    <li><a href="index.html">About us</a></li>
    <li><a href="Contact us.html">Contact Us</a></li>
    <li><a href="profile.html">View profile</a></li>
  </ul>
      </nav>
  </div>
</div>
         <div id ="login">
            
            <h2>Please SignUp to Register</h2>
            
            <form Class = "boxCont" action = "APPLICATION.jsp">
                
            
                <div>
                    <label for ="Name">Name</label>
                    <input id = "Name" type = "text" name = "name" placeholder="Please enter Name"/>
                </div>
                
                <div>
                    <label for ="ID">ID</label>
                    <input id = "ID" type = "text" name = "ID" placeholder="Please enter ID"/>
                </div>
                
                 <div>
                    <label for ="DOB">Date of birth</label>
                    <input id = "DOB" type = "text" name = "DOB" placeholder="Please enter date of Birth"/>
                </div>
                
                 <div>
                    <label for ="address">Address</label>
                    <input id = "address" type = "text" name = "address" placeholder="Please enter Address"/>
                </div>
                
                 <div>
                    <label for ="email">Email</label>
                    <input id = "email" type = "text" name = "email" placeholder="Please enter Email"/>
                </div>
                
                <div>
                    <label for ="password">Password</label>
                    <input id = "password" type = "text" name = "password" placeholder="Please enter password"/>
                </div>
                
		<div>
                   
			<input type="submit" id="signUp" name="signUp" value="Sign Up" class="btn right" />
		</div>
            
            
            
            </form>
            
            <a href="#" id="forgotpass">Forgot Your Password?</a>
        </div>

        
    </body>
</html>

