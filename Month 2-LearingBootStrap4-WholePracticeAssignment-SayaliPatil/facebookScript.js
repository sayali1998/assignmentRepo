var checkemail=/^(?:[\w\!\#\$\%\&\'\*\+\-\/\=\?\^\`\{\|\}\~]+\.)*[\w\!\#\$\%\&\'\*\+\-\/\=\?\^\`\{\|\}\~]+@(?:(?:(?:[a-zA-Z0-9](?:[a-zA-Z0-9\-](?!\.)){0,61}[a-zA-Z0-9]?\.)+[a-zA-Z0-9](?:[a-zA-Z0-9\-](?!$)){0,61}[a-zA-Z0-9]?)|(?:\[(?:(?:[01]?\d{1,2}|2[0-4]\d|25[0-5])\.){3}(?:[01]?\d{1,2}|2[0-4]\d|25[0-5])\]))$/;
    
function loginFun(){
    var email=document.getElementById("email").value;
    var password=document.getElementById("password").value;
    if(!email.match(checkemail)) {
        alert("Invalid email address");
      }
    
    else if(email=="sayalipatil631@gmail.com"){
       if(password=="password")
       {
           window.location.replace("xoriantAssignment.html");
       }
    }
}


function validateForm(){
    var count=0;
    var pass=document.getElementById('newpassword');

    //Password Check

    if(pass.value.length<8){
        alert("Password too weak, should contain minimum 8 characters");
        pass.value="";
        pass.focus();
    }
    else{
        count=count+1;
    }

    //Mobile and Email Check
    var mobile=document.getElementById('mobile');
    mobilecheck=/^(?:(?:\+|0{0,2})91(\s*[\-]\s*)?|[0]?)?[789]\d{9}$/;
    if(isNaN(mobile.value))
    {
        if(!(mobile.value).match(checkemail)) {
            alert("Invalid email address");
          }
          else{
              count=count+1;
          }
        
    }
    else{
        if((mobile.value).match(mobilecheck) && mobile.value.length==10){
            count=count+1;
        }
        else{
            alert("Please enter a valid Mobile Number");
        }
    }

    //Date of Birth Check to check if user is above 18years    
    var selecteddate = document.getElementById('date').value;
    var selectedmonth = document.getElementById('month').value;
    var selectedyear = document.getElementById('year').value;
    if(selecteddate=='- Day -' || selectedmonth=='- Month -' || selectedyear== '- Year -')
    {
        alert("Please fill your Birth date");
    }
    else{
        var currdate = new Date();
        if((currdate.getFullYear() - parseInt(selectedyear))>17)
        {
            console.log((currdate.getFullYear() - parseInt(selectedyear)))
            count=count+1;
        }
        else{
            alert("Not an eligible user");
            pass.value = "";
            mobile.value = "";
            document.getElementById('firstname').value = "";
            document.getElementById('secondname').value = "";
        }
    }
    console.log(count);
    if(count==3)
    {
        return true;
    }
    else{
        return false;
    }   

}