<%-- 
    Document   : constructor_chat
    Created on : May 4, 2018, 8:31:16 PM
    Author     : HP
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="icon" href="pho/icon.png"/>
        <title>BT Constructions</title>
        
        <script type="text/javascript" src="jquery.js"></script>
        <script type="text/javascript">
        var auto_refresh = setInterval(
        function ()
        {
        $('#load_me').load('print_non_client_table.jsp').fadeIn("slow");
        }, 5000); 
                   //every 5000 milliseconds(5sec)
                   
        function ct()
        {
            if( document.f.msg.value.length==0 )
            {alert("Please enter text in the message box below!");
                return false;}
            else
                return true;
        }
        function con()
   {
       var val = confirm("You are to be Logged-out.");
       if (val==true)return true; else return false;
   }
        </script>
        <style>
            .send{margin-top: 6px;
    margin-bottom: 16px;
                padding-left:10px;padding-right:10px;padding-top:5px;padding-bottom:5px; font-size: 16px; background-color: lightgoldenrodyellow; border: 1px solid lightcoral; color: lightcoral;
            }
            .send:hover{
                font-size: 16px; background-color: lightgoldenrodyellow; border: 2px solid lightcoral; color: lightcoral;
            }
            input[type=text]{
                height: 30px; width:600px;
                border-radius: 6px;
    box-sizing: border-box; border-color: lightcoral;
    margin-top: 6px;
    margin-bottom: 16px;
    resize: vertical;
                  padding-left:10px;padding-right:10px;padding-top:5px;padding-bottom:5px;
            }
        </style>
    </head>
    <body background="pho/12.jpg">
 <% String nic = null; %><%! String n = null; %><%       
        String r = null;String g = null; 
if((session.getAttribute("r") == null)&&(session.getAttribute("g") == null)&&(session.getAttribute("n")==null)&&(session.getAttribute("nic")==null)){
	response.sendRedirect("myhome2.html");
}else r = (String) session.getAttribute("r");g = (String) session.getAttribute("g"); n= (String) session.getAttribute("n");nic= (String) session.getAttribute("nic");

%>

<table border="0"><tr><td style="border: 5px solid darkgoldenrod; background-image:url(pho/zzz.jpg); ">
        <table border="0">
           
            <tbody>
                <tr>
                    <td width="125px"><img src="pho/logo2.png" width="260" height="100" style="border-radius: 10px;" alt="logo2"/>

                    </td>
                    <td width="900px">
                        <img src="pho/xxx.png" width="700" height="100" style="border-radius: 10px;"> 
                    </td><td align="left" width="300px" style="color: white; vertical-align: bottom;">   
<br><p style="font-size:16px;text-align: left"> You are logged-in.</p><p style="font-size:23px;text-align: left">Hi <%=g %><%=r %><br><%=n %><br><%=nic %></p>
     
 </td>
                </tr>  
        </table>    <table> 
    <tr> 
        <td width="1100px"></td>
         <td width="50px" align="left"><p style="font-size:20px ;color: white; text-align: left;"></p> </td>

        <td width="50px">       
            <form method="post" action="Logout"><input type="image" value="submit" onclick="return(con());" src="pho/std.png" width="60px" heigth="35px" alt="submit Button" onMouseOver="this.src='pho/std.png'" title="click to logout."></form>  
          </td><td width="100px" align="left"><form method="post" action="back_to_home_constructor"><input type="image" value="submit" src="pho/prof.png" width="50px" heigth="25px" alt="submit Button" onMouseOver="this.src='pho/prof.png'" title="back to my profile page."></form>  
        </td>
       </tr>
                      
        </table>
                 </td></tr></table> 


        <form name="f" action="Send" method="post">
            <table border="0" width="600px;" align="center" style="max-height: auto; border: 3px solid black;" >
                <tr><td colspan="2">
                        
                        <div class="box">                      
                      
                        
                       
                        
                        
<div id="load_me">
<%@ include file="print_non_client_table.jsp" %>
</div>
                        
                        
                        
                        
                        
                        </div>   
                    </td></tr>
                <tr><td width="600px"><input type="text" name="msg" id="msg"></td><td width="100px" style="float:left; vertical-align: bottom;" ><input type="submit" onclick="return(ct());" class="submit send" value="Send"></td></tr>
            </table>
        </form>        
        
    </body>
</html>

