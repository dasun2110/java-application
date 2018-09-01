<%-- 
    Document   : profile
    Created on : Apr 15, 2018, 4:37:51 PM
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
            .chat{
                background-color: coral; border: 1px solid darkred; color: darkred;
                width: 250px;
            }
            .chat:hover{ cursor: pointer;
                background-color: coral; border: 3px solid darkred; color: darkred;
                width: 250px;
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
        $('#load_me').load('print_confirmation.jsp').fadeIn("slow");
        }, 10000); // autorefresh the content of the div after
                   //every 10000 milliseconds(10sec)
   
   
   function con()
   {
       var val = confirm("Your are to be Logged-out.");
       if (val==true)return true; else return false;
   }
   
   function check()
    {
       document.getElementById('t1').innerHTML="Client Name (with initials) :";
document.getElementById('t2').innerHTML="NIC :";
document.getElementById('t3').innerHTML="Project Type :";
document.getElementById('l').innerHTML="Project Location : "; 
document.getElementById('l1').innerHTML="Land Number - ";
document.getElementById('l2').innerHTML="Street - ";
document.getElementById('l3').innerHTML="City - ";
document.getElementById('l4').innerHTML="District - ";
document.getElementById('l5').innerHTML="Province - ";
document.getElementById('t4').innerHTML="Land Area :";
document.getElementById('t5').innerHTML="Select your Architect :";
document.getElementById('t6').innerHTML="Select your Engineer :";
document.getElementById('t7').innerHTML="Select your Interior Designer :";
document.getElementById('t8').innerHTML="Select your Quantity Surveyor :";
document.getElementById('t9').innerHTML="Select your Carpenter :";
document.getElementById('t10').innerHTML="Remarks (Other Details) :";

        if( document.f1.name.value.length==0 ) { document.getElementById('t1').innerHTML="<p style='color:red;'>*Client Name (with initials) :</p>";}
        if( document.f1.NIC.value.length==0 ) { document.getElementById('t2').innerHTML="<p style='color:red;'>*NIC :</p>";}
        if( document.f1.Project.value.length==0 ) { document.getElementById('t3').innerHTML="<p style='color:red;'>*Project Type :</p>";}
        if( document.f1.landnumber.value.length==0 ) { document.getElementById('l').innerHTML="<p style='color:red;'>*Project Location : </p>"; document.getElementById('l1').innerHTML="<p style='color:red;'>*Land Number - </p>";}
        if( document.f1.street.value.length==0 ) { document.getElementById('l').innerHTML="<p style='color:red;'>*Project Location : </p>"; document.getElementById('l2').innerHTML="<p style='color:red;'>*Street - </p>";}
        if( document.f1.city.value.length==0 ) { document.getElementById('l').innerHTML="<p style='color:red;'>*Project Location : </p>"; document.getElementById('l3').innerHTML="<p style='color:red;'>*City - </p>";}
        if( document.f1.district.value.length==0 ) { document.getElementById('l').innerHTML="<p style='color:red;'>*Project Location : </p>"; document.getElementById('l4').innerHTML="<p style='color:red;'>*District - </p>";}
        if( document.f1.province.value.length==0 ) { document.getElementById('l').innerHTML="<p style='color:red;'>*Project Location : </p>"; document.getElementById('l5').innerHTML="<p style='color:red;'>*Province - </p>";}
        if( document.f1.landarea.value.length==0 ) { document.getElementById('t4').innerHTML="<p style='color:red;'>*Land Area :</p>";}
        if( document.f1.architect.value.length==0 ) { document.getElementById('t5').innerHTML="<p style='color:red;'>*Select your Architect :</p>";}
        if( document.f1.engineer.value.length==0 ) { document.getElementById('t6').innerHTML="<p style='color:red;'>*Select your Engineer :</p>";}
        if( document.f1.interiordesigner.value.length==0 ) { document.getElementById('t7').innerHTML="<p style='color:red;'>*Select your Interior Designer :</p>";}
        if( document.f1.qs.value.length==0 ) { document.getElementById('t8').innerHTML="<p style='color:red;'>*Select your Quantity Surveyor :</p>";}
        if( document.f1.carpenter.value.length==0 ) { document.getElementById('t9').innerHTML="<p style='color:red;'>*Select your Carpenter :</p>";}
        
        var remarks = document.getElementById("remarks");
        
         if (remarks.value.replace(/ /g,'').length) {} else { document.getElementById('t10').innerHTML="<p style='color:red;'>*Remarks (Other Details) :</p>";document.getElementById('t').innerHTML="Please Enter ALL * fields !"; return false;}
        var tell = remarks.value.replace(/ /g,'').length;
        if ( document.f1.name.value.length==0 || document.f1.NIC.value.length==0 || document.f1.Project.value.length==0 || document.f1.landnumber.value.length==0 || document.f1.street.value.length==0 || document.f1.city.value.length==0 || document.f1.district.value.length==0 || document.f1.province.value.length==0 || document.f1.landarea.value.length==0 || document.f1.architect.value.length==0 || document.f1.engineer.value.length==0 || document.f1.interiordesigner.value.length==0 || document.f1.qs.value.length==0 || document.f1.carpenter.value.length==0 )
        {document.getElementById('t').innerHTML="Please Enter ALL * fields !"; return false;} 
       else
       {if (tell > 1250){ document.getElementById('t10').innerHTML="<p style='color:red;'>Remarks (Other Details) :</p>"; document.getElementById('t11').innerHTML="<p style='color:red;'>You have exceeded the maximum word limit!</p>"; return false;
           }else { 
                    return true;}
    }
    
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
                        <img src="pho/clp.jpg" width="700" height="100" style="border-radius: 10px;"> 
                    </td><td align="left" width="300px" style="color: white; vertical-align: bottom;">   
 <%! String n = null; %>                        <%
//allow access only if session exists
String r = null;String g = null; 
if((session.getAttribute("r") == null)&&(session.getAttribute("g") == null)&&(session.getAttribute("n") == null)){
	response.sendRedirect("myhome2.html");
}else r = (String) session.getAttribute("r");g = (String) session.getAttribute("g");n = (String) session.getAttribute("n");

%>

<br><p style="font-size:16px;text-align: left"> You are logged-in.</p><p style="font-size:23px;text-align: left">Hi <%=g %><%=r %></p>
    
 </td>
                </tr>  
        </table>    <table> 
    <tr> 
        <td width="1085px"></td>
         <td width="50px" align="left">       
            <form method="post" action="Logout"><input type="image" value="submit" onclick="return(con());" src="pho/std.png" width="60px" heigth="35px" alt="submit Button" onMouseOver="this.src='pho/std.png'" title="click to logout."></form>  
          </td>
       </tr>
                      
        </table>
                 </td></tr></table> 
        <table border="0" cellpadding="5" style="color:white;" align="center">
           
            <tbody >
                <tr >
                    <td width="1000px"> 
                        
                        
                        
                        
                        
                        
                        <div id="load_me" style="align-content: center;">
<%@ include file="print_confirmation.jsp" %>
</div>   
                                   
               </td>
                   
                </tr>
            </tbody>

        </table>


    </body>
</html>
