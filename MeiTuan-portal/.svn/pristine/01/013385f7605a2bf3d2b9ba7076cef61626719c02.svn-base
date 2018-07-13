function checkNull(){
	var telephone = document.getElementById("telephone");
	var password = document.getElementById("password");
	if(telephone.value == ""){
		judgeUserName();
		return false;
	}
	if(password.value == ""){
		judgePassword();
		return false;
	}
	return true;
}

function judgeUserName(){
	var userName = document.getElementById("userName");
	var triangle1 = document.getElementById("triangle1");
	var judge1 = document.getElementById("judge1");
	if(userName.value == ""){
		triangle1.style.visibility="visible";
		judge1.style.visibility="visible";
	}else{
		triangle1.style.visibility="hidden";
		judge1.style.visibility="hidden";
	}
}


function judgePassword(){
	var userName = document.getElementById("userName");
	var triangle2 = document.getElementById("triangle2");
	var judge2 = document.getElementById("judge2");
	if(userName.value == ""){
		triangle2.style.visibility="visible";
		judge2.style.visibility="visible";
	}else{
		triangle2.style.visibility="hidden";
		judge2.style.visibility="hidden";
	}
}