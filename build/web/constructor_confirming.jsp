<%-- 
    Document   : constructor_confirming
    Created on : May 5, 2018, 7:05:02 PM
    Author     : HP
--%>



<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>


<html>
    <head>
        <style>
            
            .text {
	border: 4px solid black;
	border-radius: 17px;
	height: 60px;
	width: 230px;
        font-weight: bold;
   background-color:gainsboro;
    cursor: text;
}
            .submit{
                cursor: pointer;
                padding: 10px;
                font-size: 16px;
                background-color:black;
                border:1px solid white; color:white; 
            }
            
            .submit1:hover{background-color:orangered; border: 3px solid black; color:black;}
               .sub:hover{background-color:blue; border: 2px solid black; color:white;}  
            .submit2{
                
              display: table;
              width: 100%;
               background: #222  repeat-x;
    display: inline-block;
    padding: 3px 7px 7px 4px;
    color: #fff;
    text-decoration: none;
    font-weight: bold;
    line-height: 1;
    -moz-border-radius: 5px;
    -webkit-border-radius: 5px;
    -moz-box-shadow: 0 1px 3px rgba(0,0,0,0.5);
    -webkit-box-shadow: 0 1px 3px rgba(0,0,0,0.5);
    text-shadow: 0 -1px 1px rgba(0,0,0,0.25);
    border-bottom: 1px solid rgba(0,0,0,0.25);
    position: relative;
    cursor: pointer; 
            }
            
            .fb5 {
	background-color: lightseagreen;
	padding-left:13px;
	padding-right:13px;
	padding-top:5px;
	padding-bottom:5px;	
	color: black;
        border-radius: 10px;
	border:1px solid blue;
	background-image: url(images/button_bg.jpg);
}
.fb5:hover {
        color: white;
        border-radius: 10px;
	background-color: blue;	
	border:1px solid lightseagreen;
	background-image: url(images/button_bg_over.jpg);
}

            
            .submit3:hover{background-color:grey; border: 2px solid black; color:black;}
            .navbar {
    overflow: hidden;
    background-color:none;
    font-family: Arial, Helvetica;
}

.navbar a {
    float: right;
    font-size: 16px;
    color: white;
    text-align: right;
    padding: 14px 140px;
    
    text-decoration: none;
}

.dropdown {
    float: right;
    overflow: hidden;
}

.dropdown .dropbtn {
    font-size: 16px;    
    border: none;
    outline: none;
    color: white;
    padding: 14px 16px;
    background-color: inherit;
    font-family: inherit;
    margin: 0;
}

.navbar a:hover, .dropdown:hover .dropbtn {
     border-top: 2px solid black; border-right: 2px solid black; border-left: 2px solid black;
    color: white;    
    border-bottom: 2px solid white;
}

.dropdown-content {
    display: none;
    position: absolute;
    
    background-color: #f9f9f9;
    min-width: 160px;
    box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
    z-index: 1;
}

.fb {
	border: 2px solid #777;
	border-radius: 10px;
	outline: none;
        
        font-family: inherit;
        font-color:black;
}
.dropdown-content a {
    float: none;
    color: black;
    padding: 12px 16px;
    text-decoration: none;
    display: block;
    text-align: left;
}

.dropdown-content a:hover {
    background-color: #717171;
}

.dropdown:hover .dropdown-content {
    display: block;
    }
      .submitt{cursor: pointer;
                padding-bottom: 7px; padding-top: 7px; padding-left: 25px; padding-right: 25px;
                font-size: 18px;
                color: white; font-weight: bold;
                background-image: url(pho/b_1.jpg);
                border:1px solid white;        
    }
    .submitt:hover{cursor: pointer;
                padding-bottom: 7px; padding-top: 7px; padding-left: 25px; padding-right: 25px;
                font-size: 16px;
                color: white;
                background-image: url(pho/b_1.jpg);
                border:4px solid white;        
    }
    .submit4 {
        padding-bottom: 5px; padding-top: 5px; padding-left: 17px; padding-right: 17px;
                font-size: 16px; border:1px solid darkred; 
                color: darkred; background-color: pink;
    }
    .submit4:hover{cursor: pointer;
        font-size: 14px; border:3px solid darkred; 
                color: darkred; background-color: pink;
    }
    
    .button3{
        padding-bottom: 5px; padding-top: 5px; padding-left: 20px; padding-right: 20px;
        background-color: lightcyan; border: 1px solid blueviolet; color: blueviolet; font-weight: bold;
    }
    
    .button4{
        padding-bottom: 5px; padding-top: 5px; padding-left: 20px; padding-right: 20px;
        background-color: lightsalmon; border: 1px solid orangered; color: orangered; font-weight: bold;
    }
    .button3:hover{
        border: 3px solid blueviolet;
    }
    .button4:hover{
        border: 3px solid orangered;
    }
</style>
                <link rel="icon" href="pho/icon.png"/>
        <title>BT Constructions</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <script type="text/javascript" src="jquery.js"></script>
        <script type="text/javascript">
        var auto_refresh = setInterval(
        function ()
        {
        $('#load_me').load('cc.jsp').fadeIn("slow");
        }, 20000); // autorefresh the content of the div after
                   //every 20000 milliseconds(5sec)
        function sure()
   {
       var val = confirm("You are about to delete all your guest messages. Please confirm.");
       if (val==true)return true; else return false;
   }
   
   function con()
   {
       var val = confirm("You are to be Logged-out.");
       if (val==true)return true; else return false;
   }
   

            function decline()
   {
       var val = confirm("You are about to DECLINE an order.");
       if (val==true)return true; else return false;
   }  
   function confirm()
   {
       var val = confirm("You are about to CONFIRM an order.");
       if (val==true)return true; else return false;
   }  
            
  </script>
    </head>
    <body background="pho/12.jpg">
       
        <table border="0"><tr><td style="border: 5px solid darkgoldenrod; background-image:url(pho/zzz.jpg); ">
        <table border="0">
           
            <tbody>
                <tr>
                    <td width="125px"><img src="pho/logo2.png" width="260" height="100" style="border-radius: 10px;" alt="logo2"/>

                    </td>
                    <td width="900px">
                        <img src="pho/xxx.png" width="700" height="100" style="border-radius: 10px;"> 
                    </td><td align="left" width="300px" style="color: white; vertical-align: bottom;">   
 <%! String n = null; %>                       <%
//allow access only if session exists
String r = null;String g = null; 
if((session.getAttribute("r") == null)&&(session.getAttribute("g") == null)&&(session.getAttribute("n") == null)){
	response.sendRedirect("myhome2.html");
}else r = (String) session.getAttribute("r");g = (String) session.getAttribute("g");n = (String) session.getAttribute("n");

%>

<br><p style="font-size:16px;text-align: left"> You are logged-in.</p><p style="font-size:23px;text-align: left">Welcome <%=g %><%=r %></p>
     </td>
                </tr>  
        </table>    <table> 
    <tr> 
        <td width="1100px"><h1 align="center" style="color: lightblue;">New Orders</h1></td>
         <td width="50px" align="left">     
     <form method="post" action="Logout"><input type="image" value="submit" onclick="return(con());" src="pho/std.png" width="60px" heigth="35px" alt="submit Button" onMouseOver="this.src='pho/std.png'" title="click to logout."></form>  
          </td><td width="100px" align="left"><form method="post" action="back_to_home_constructor"><input type="image" value="submit" src="pho/prof.png" width="50px" heigth="25px" alt="submit Button" onMouseOver="this.src='pho/prof.png'" title="back to my profile page."></form>  
             </td>
       </tr>
                      
        </table>
                 </td></tr></table> 
     <table border="0" cellpadding="5" style="color:white;">
           
            <tbody >
                <tr >
                    <td width="1000px"> 
                        
                        

                        
   <div id="load_me">
<%@ include file="cc.jsp" %>
</div>                     
                        
                        
                        
                        
                        
<br><br><br>                        
                                               
                       
                        
                        
                    </td>
                    <td  width="325px">  
                         
                                    </td>
                                </tr>
                            </tbody>
                        </table>
                         

 
  
  
 

                    
                    
                    
                   


    </body>
</html>

