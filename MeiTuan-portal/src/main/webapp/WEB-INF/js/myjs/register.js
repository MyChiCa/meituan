//提交时判空
function checkNull(){
	var telephone = document.getElementById("telephone");
	var password = document.getElementById("password");
	var con_pword = document.getElementById("con_pword");
	if(telephone.value == ""){
		judgeTel();
		return false;
	}
	if(password.value == ""){
		judgePass();
		return false;
	}
	if(con_pword.value == ""){
		judgeConPass();
		return false;
	}
	return true;
}

//手机号输入判断
function judgeTel(){
	
	var telephone = document.getElementById("telephone");
	var triangle1 = document.getElementById("triangle1");
	var judge1 = document.getElementById("judge1");
	if(telephone.value == ""){
		triangle1.style.visibility = "visible";
		judge1.style.visibility = "visible";
		judge1.innerHTML = "请输入您的手机号！";
	}else{
		$.ajax({
			url:"ifExitUser",
			type:"get",
			success:function(data){
				alert(data);	
			}
		});
		triangle1.style.visibility = "hidden";
		judge1.style.visibility = "hidden";
	}
}

//密码输入判断
function judgePass(){
	
	var password = document.getElementById("password");
	var triangle2 = document.getElementById("triangle2");
	var judge2 = document.getElementById("judge2");

	if(password.value == ""){
		triangle2.style.visibility = "visible";
		judge2.style.visibility = "visible";
		judge2.innerHTML = "请填写密码！";
	}else{
		if(password.value.length<6){
			triangle2.style.visibility = "visible";
			judge2.style.visibility = "visible";
			judge2.innerHTML = "密码应为6位字符哦！";
		}else{
			triangle2.style.visibility = "hidden";
			judge2.style.visibility = "hidden";
		}
	}
}

//密码等级判断
function judgePassLevel(){

	var password = document.getElementById("password");
	var weak = document.getElementById("weak");
	var soso = document.getElementById("soso");
	var strong = document.getElementById("strong");
	if(password.value.length < 6){
		return;
	}else{
		var i = pwordPower(password.value);
		if(i==1){
			weak.style.backgroundColor="red";
			soso.style.backgroundColor="";
			strong.style.backgroundColor="";
		}else if(i==2){
			weak.style.backgroundColor="orange";
			soso.style.backgroundColor="orange";
			strong.style.backgroundColor="";
		}else if(i==3){
			weak.style.backgroundColor="green";
			soso.style.backgroundColor="green";
			strong.style.backgroundColor="green";
		}else{
			return;
		}
	}
}

function pwordPower(pword){

	var level = judgeStr(pword);
	if(pword.length<=10 && level==1){
		return 1;	
	}else if(pword.length<=10 && level==2){
		return 1;	
	}else if(pword.length<=10 && level==3){
		return 2;
	}else if(pword.length<=14){
		if(level==4){
			 return 3;
		}
		return 2;
	}else{
		return 3;
	}
}
function judgeStr(pword){
	var level=0;
	//判断数字
	var num = /[0-9]/;
	//判断字母
	var word = /[a-z]/i;
	//判断非数字和字母
	var notNumWord = /[^0-9a-z]/i;
	if(num.test(pword)){
		level = 1;
	}
	if(word.test(pword)){
		level = 2;
	}
	if(num.test(pword) && word.test(pword)){
		level = 3;
	}
	if(notNumWord.test(pword)){
		level = 4;
	}
	return level;
}
function judgeConPass(){
	var con_pword = document.getElementById("con_pword");
	var password = document.getElementById("password");
	var triangle3 = document.getElementById("triangle3");
	var judge3 = document.getElementById("judge3");
	if(password.value != con_pword.value){
		triangle3.style.visibility = "visible";
		judge3.style.visibility = "visible";
		judge3.innerHTML = "两次输入的密码不一致哦!";
	}else{
		triangle3.style.visibility = "hidden";
		judge3.style.visibility = "hidden";
	}
}
function judgePro(){
	var register = document.getElementById("register");
	var protocol = document.getElementById("protocol");
	if(protocol.checked == true){
		register.setAttribute("class","check");
		register.removeAttribute("disabled");
	}else{
		var classVal = register.getAttribute("class");
		//删除class
		classVal = classVal.replace("check","");
		register.setAttribute("class",classVal );
		register.setAttribute("disabled","disabled");
	}

}