/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */


function valid(){
   
var userv=document.forms[0].no.value;
var passv=document.forms[0].pass.value;
var namev=document.forms[0].name.value;
var couv=document.forms[0].cou.value;
var joinYearv=document.forms[0].joinYear.value;
var passYearv=document.forms[0].passYear.value;
var connov=document.forms[0].conno.value;
var eiv=document.forms[0].ei.value;
var ansv=document.forms[0].ans.value;

var userreg=new RegExp("^[a-zA-Z0-9][a-zA-Z0-9]*$");
var passreg=new RegExp("^[a-zA-Z0-9][a-zA-Z0-9]*$");
var namereg=new RegExp("^[a-zA-Z][a-zA-Z]*$");
var coureg=new RegExp("^[a-zA-Z][a-zA-Z0-9]*$");
var joinYearreg=new RegExp("^[0-9]{4}$");
var passYearreg=new RegExp("^[0-9]{4}$");
var connoreg=new RegExp("^[0-9]{10}$");
var eireg=new RegExp("^([a-zA-Z0-9_\.\-])+\@(([a-zA-Z0-9\-])+\.)+([a-zA-Z0-9]{2,4})+$");
var areg=new RegExp("^[a-zA-Z][a-zA-Z]*$");

var ruser=userreg.exec(userv);
var rpass=passreg.exec(passv);
var rname=namereg.exec(namev);
var rcou=coureg.exec(couv);
var rjoinYear=joinYearreg.exec(joinYearv);
var rpassYear=passYearreg.exec(passYearv);
var rconno=connoreg.exec(connov);
var rei=eireg.exec(eiv);
var ransr=areg.exec(ansv);

if(ruser && rpass && rname && rcou && rjoinYear && rpassYear && rconno && rei && ransr )
{alert("all values are valid");
return true;
}
else
{
if(!ruser)
{

alert("Please enter your valid reg no");
		document.forms[0].no.focus();
                
}
	if(!rpass)
        {alert("password should not contain any special characters");
		document.forms[0].pass.focus();
         
        }

	       
                if(!rname)
        {
        alert("Please enter valid name");
         document.forms[0].name.focus();
 
		
                }
                if(!rcou)
        {alert("Please enter valid course");
		document.forms[0].cou.focus();
 
        }

	if(!rjoinYear)
        {alert("Please enter valid join year");
		document.forms[0].joinYear.focus();
      
        }

	
                if(!rpassYear)
        {alert("Please enter valid passyear");
		document.forms[0].passYear.focus();
        
        }

	
                if(!rconno)
        {alert("Please enter valid contact number");
		document.forms[0].conno.focus();
                 }

	
                if(!rei)
        {alert("Please enter valid email id");
		document.forms[0].ei.focus();
         
        }

	
                if(!ransr)
        {
        alert("Please enter valid answer");
		document.forms[0].ansv.focus();
                         }
                           return false;              
                }
                }