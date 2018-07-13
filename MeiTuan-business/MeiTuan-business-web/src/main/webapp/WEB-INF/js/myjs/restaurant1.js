//轮播图中内div走过的距离
var temp = 0;
var img_show_inner = document.getElementById("img_show_inner");
function nextImage(){
	if(temp == 0){
		temp = temp - 700;
		img_show_inner.style.transform = 'translateX(-700px)';
	}else if(temp == -700){
		temp = temp - 700;
		img_show_inner.style.transform = 'translateX(-1400px)';
	}else if(temp == -1400){
		temp = temp - 700;
		img_show_inner.style.transform = 'translateX(-2100px)';
	}else if(temp == -2100){
		temp = temp - 700;
		img_show_inner.style.transform = 'translateX(-2800px)';
	}else if(temp == -2800){
		temp = temp - 700;
		img_show_inner.style.transform = 'translateX(-3500px)';
	}else{
		img_show_inner.style.transform = 'translateX(0)';
		temp = temp + 3500;
	}
	//结论：
	/*
		通过style.left这个左值，要设置绝对定位
		而offsetLeft要设置相对定位，并且translate是无法改变offsetLeft的值的。
	*/
	/*else if(img_show_inner.offsetLeft<= -2800){
		img_show_inner.style.transform = 'translateX(-2100px)';
	}else if(img_show_inner.offsetLeft<= -2100){
		img_show_inner.style.transform = 'translateX(-1400px)';
	}else if(img_show_inner.offsetLeft<= -1400){
		img_show_inner.style.transform = 'translateX(-700px)';
	}else{
		img_show_inner.style.transform = 'translateX(-3500px)';
	}*/
}
function preImage(){

	if(temp == 0){
		temp = temp - 3500;
		img_show_inner.style.transform = 'translateX(-3500px)';
	}else if(temp == -700){
		temp = temp + 700;
		img_show_inner.style.transform = 'translateX(0px)';
	}else if(temp == -1400){
		temp = temp + 700;
		img_show_inner.style.transform = 'translateX(-700px)';
	}else if(temp == -2100){
		temp = temp + 700;
		img_show_inner.style.transform = 'translateX(-1400px)';
	}else if(temp == -2800){
		temp = temp + 700;
		img_show_inner.style.transform = 'translateX(-2100px)';
	}else{
		temp = temp + 700;
		img_show_inner.style.transform = 'translateX(-2800px)';
	}
}
