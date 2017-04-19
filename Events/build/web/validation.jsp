function validation(){
var userv=document.forms[0].no.value;
var passv=document.forms[0].pass.value;
var cpassv=document.forms[0].cpass.value;
var namev=document.forms[0].name.value;
var couv=document.forms[0].cou.value;
var joinYearv=document.forms[0].joinYear.value;
var passYearv=document.forms[0].passYear.value;
var connov=document.forms[0].conno.value;
var eiv=document.forms[0].ei.value;
var ansv=document.forms[0].ans.value;

var userreg=new RegExp("^[a-z A-Z][a-z A-Z 0-9]$");
var passreg=new RegExp("^[a-z A-Z][a-z A-Z 0-9]{,8}$");
var cpassreg=new RegExp("^[a-z A-Z][a-z A-Z 0-9]{,8}$");
var namereg=new RegExp("^[a-z A-Z][a-z A-Z]$");
var coureg=new RegExp("^[0-9]$");
var joinYearreg=new RegExp("^[0-9]$");
var passYearreg=new RegExp("^[0-9]$");
var connoreg=new RegExp("^[0-9]{10}$");
var eireg=new RegExp("/^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/");
var areg=new RegExp("^[a-z A-Z][a-z A-Z]$");
var ruser=userreg.exec(userv);
var rpass=passreg.exec(passv);
var rcpass=cpassreg.exec(cpassv);
var rname=namereg.exec(namev);
var rcou=coureg.exec(couv);
var rjoinYear=joinYearreg.exec(joinYearv);
var rpassYear=passYearreg.exec(passYearv);
var rconno=connoreg.exec(connov);
var rei=eireg.exec(eiv);
var ransr=areg.exec(ansv);

if(ruser && rpass && rcpass &&rname &&rcou && rjoinyear && rpassYear &&  rconno && rei && ransr )
{alert("all values are valid");
return true;
}
else if
{
if(!ruser)
{

alert("Please enter your valid id");
		document.forms[0].no.focus();
}
	if(!rpass)
        {alert("Please enter valid password");
		document.forms[0].pass.focus();
                }

	if(!rcpass)
        {alert("Please enter valid password");
		
                document.forms[0].cpass.focus();
                }
               
                if(!rname)
        {
        alert("Please enter valid name");
         document.forms[0].name.focus();

		
                }
                if(!rcou)
        {alert("Please enter valid cou");
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
        {alert("Please enter valid cnno");
		document.forms[0].conno.focus();
                }

	
                if(!rei)
        {alert("Please enter valid rei");
		document.forms[0].ei.focus();
                }

	
                if(!ransr)
        {
        alert("Please enter valid answer");
		document.forms[0].ansv.focus();
                }
                
                }
else{
	return false;
        }
        }

	

	alert("hi");
