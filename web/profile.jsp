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
        cursor: pointer;
                padding-bottom: 7px; padding-top: 7px; padding-left: 25px; padding-right: 25px;
                font-size: 18px;
                color: white; font-weight: bold;
                background-color: lightcoral;
                border:1px solid coral;  
    }
    .chat:hover{cursor: pointer;
                padding-bottom: 7px; padding-top: 7px; padding-left: 25px; padding-right: 25px;
                font-size: 16px;
                border:4px solid coral;        
    }
</style>
                <link rel="icon" href="pho/icon.png"/>
        <title>BT Constructions</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <script>
   
   
   function con()
   {
       var val = confirm("You are to be Logged-out.");
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
        <td width="1100px"></td>
         <td width="50px" align="left">     
      <form method="post" action="Logout"><input type="image" value="submit" onclick="return(con());" src="pho/std.png" width="60px" heigth="35px" alt="submit Button" onMouseOver="this.src='pho/std.png'" title="click to logout."></form>  
          </td>
       </tr>
                      
        </table>
                 </td></tr></table> 
        <table border="0" cellpadding="5" align="center" style="color:white;">
           
            <tbody >
                <tr >
                    <td width="1000px"> 
                        <br><h1 align="center" style="color:yellow">Welcome to BT-constructions</h1>
                        <h1 align="center" style="color:orange">Fill-in your order details below...</h1>
                        <h2 align="center" style="color: aqua">Please note that once an order has been placed; you won't be able to change the main details of the construction. There won't be online payment methods.  All payments will be done at the office.</h2>
                        <p id="t" align="center" style="color: red;"></p>
                        <div class="transbox">
                            <form name="f1" method="POST" action="Place_Order">
                        <table border="0" align="center" style="color: white;">
                            
                            <tbody>
                                <tr>
                                    <td align="right" id="t1"> Client Name (with initials) :  </td>
                                    <td><input type="text" name="name" value="" style="width:400px; background-color:blanchedalmond " /></td>
                                </tr>
                                <tr>
                                    <td align="right" id="t2">NIC :</td>
                                    <td><input type="text" name="NIC" value="" style=" background-color:blanchedalmond " /></td>
                                </tr>
                                <tr>
                                     <td align="right" id="t3">Project Type :</td>
                                     <td>
                                         <table border="0" cellspacing="2" style="color: white;">
                                            <tbody>
                                                 <tr>
                                                     <td align="left"><input type="radio" name="Project" value=" House " /> House constructions </td></tr><tr>
                                                     <td align="left"><input type="radio" name="Project" value=" Hospital " />Hospital constructions</td></tr><tr>
                                                 
                                                     <td align="left"><input type="radio" name="Project" value=" Business " />Business constructions</td></tr><tr>
                                                     <td align="left"><input type="radio" name="Project" value=" Educational " />Educational Institutional constructions</td></tr><tr>
                                                 <td align="left"><input type="radio" name="Project" value="  Religious " /> Religious Institutional constructions</td>
                                             </tbody>
                                         </table>

                                     </td>
                                </tr>
                                <tr><td align="right" id="l"> Project Location :</td>
                                    <td>       
                                        <table border="0" style="color: white;">
                                            <tbody>
                                                <tr>
                                                    <td align="left" colspan="2"></td>
                                                </tr>
                                                <tr>
                                                    <td align="right" id="l1">Land Number - </td><td><input type="text" name="landnumber" value=""style=" background-color:blanchedalmond " /></td>
                                                </tr>
                                                <tr>
                                                    <td align="right" id="l2">Street - </td><td><input type="text" name="street" value="" style=" background-color:blanchedalmond "/></td>
                                                </tr>
                                                <tr>
                                                    <td align="right" id="l3">City - </td> <td><input type="text" name="city" value="" style=" background-color:blanchedalmond "/></td>
                                                </tr>
                                                <tr>
                                                    <td align="right" id="l4">District - </td><td><input type="text" name="district" value="" style=" background-color:blanchedalmond " /></td>
                                                </tr>
                                                <tr>
                                                    <td align="right" id="l5">Province - </td> <td><input type="text" name="province" value="" style=" background-color:blanchedalmond "/></td>
                                                </tr>
                                            </tbody>
                                        </table>

                                    </td>
                                    
                                </tr>
                                <tr>
                                    <td align="right" id="t4">Land Area :</td>
                                    <td><input type="text" name="landarea" value=""    style=" background-color:blanchedalmond " />(in perches)</td>
                                </tr>
                                <tr><td align='right' id="t5">Architect :</td>
                                    <td><select name='architect' style="background-color: blanchedalmond; ">
                                            <option value="" selected="selected">select from below</option>
  <option value="Taniya denaksi Dewindra">Mrs.Taniya denaksi Dewindra</option>
  <option value="A S Kasun Arunika maduwala">Mr.A S Kasun Arunika maduwala</option>
  <option value="Nawam Nilanthika Dias">Mr.Nawam Nilanthika Dias</option>
                                        </select></td>
                                </tr>
                                <tr><td align='right' id="t6">Engineer :</td>
                                    <td><select name='engineer' style="background-color: blanchedalmond; ">
                                            <option value="" selected="selected">select from below</option>
  <option value="Sampath Dewindra Reparamadu">Mr.Sampath Dewindra Reparamadu</option>
  <option value="A S K Liyanamaduwala">Mr.A S K Liyanamaduwala</option>
  <option value="Kawmada Obesekara">Mrs.Kawmada Obesekara</option>
                                        </select></td>
                                </tr>
                                <tr><td align='right' id="t7">Interior Designer :</td>
                                    <td><select name='interiordesigner' style="background-color: blanchedalmond; ">
                                            <option value="" selected="selected">select from below</option>
  <option value="Rochel Menushkiya Widyani">Mrs.Rochel Menushkiya Widyani</option>
  <option value="Abhisheka Nathaliya Fernando">Mrs.Abhisheka Nathaliya Fernando</option>
  <option value="Hasaral Nimantha Nanayakkara">Mr.Hasaral Nimantha Nanayakkara</option>
                                        </select></td>
                                </tr>
                                <tr><td align='right' id="t8">Quantity Surveyor :</td>
                                    <td><select name='qs' style="background-color: blanchedalmond; ">
                                            <option value="" selected="selected" >select from below</option>
  <option value="Anushika Chathurangana Ekanayake">Mr.Anushika Chathurangana Ekanayake</option>
  <option value="A S Chamal Desmith Iddamalgoda">Mr.A S Chamal Desmith Iddamalgoda</option>
  <option value="D N H Rukantha Manel Fonseka">Mr.D N H Rukantha Manel Fonseka</option>
                                        </select></td>
                                </tr>
                                <tr><td align='right' id="t9">Carpenter :</td>
                                    <td><select name='carpenter' style="background-color: blanchedalmond; ">
                                            <option value="" selected="selected">select from below</option>
  <option value="Raiyan Deshunka Rulahk">Mr.Raiyan Deshunka Rulahk</option>
  <option value="Dushimitha Kalpa Jayawardhana">Mr.Dushimitha Kalpa Jayawardhana</option>
  <option value="Dasun Abewardana Kumarasinghe">Mr.Dasun Abewardana Kumarasinghe</option>
                                        </select></td>
                                </tr>
                                
                                
                                <tr>
                                    <td align="right" id="t10">Remarks (Other Details) :</td>
                                    <td> <textarea id="remarks" name="remarks" rows="5" cols="20"  style="width:300px;height:100px; background-color:blanchedalmond ; ">
                                        </textarea> (maximum 100 words)<p id="t11"></p></td>
                                </tr>
                                <tr>
                                    <td colspan="2" align = "center"><input value="Confirm Order" onClick="return(check());" type="submit"  name="Cb" class="submit submit1" /></td>
                                    
                                </tr>
                                
                            </tbody>
                        </table>

                            </form></div>
                    </td>
                    
                </tr>
            </tbody>

        </table>


    </body>
</html>
