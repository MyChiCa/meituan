$(document).ready(function(){
	//hover事件
	$("#image1").hover(function(){
		$(this).css({"transform":"rotate(30deg)","transform-origin":"50px 15px"});
	}, function(){
		$(this).css("transform","rotate(0deg)");
	});

	$("#image2").hover(function(){
		$(this).css({"transform":"rotate(30deg)","transform-origin":"50px 15px"});
	}, function(){
		$(this).css("transform","rotate(0deg)");
	});

	$("#image3").hover(function(){
		$(this).css({"transform":"rotate(30deg)","transform-origin":"50px 15px"});
	}, function(){
		$(this).css("transform","rotate(0deg)");
	});

	$("#image4").hover(function(){
		$(this).css({"transform":"rotate(30deg)","transform-origin":"50px 15px"});
	}, function(){
		$(this).css("transform","rotate(0deg)");
	});

	$("#image5").hover(function(){
		$(this).css({"transform":"rotate(30deg)","transform-origin":"50px 15px"});
	}, function(){
		$(this).css("transform","rotate(0deg)");
	});

	$("#image6").hover(function(){
		$(this).css({"transform":"rotate(30deg)","transform-origin":"50px 15px"});
	}, function(){
		$(this).css("transform","rotate(0deg)");
	});

	$("#image7").hover(function(){
		$(this).css({"transform":"rotate(30deg)","transform-origin":"50px 15px"});
	}, function(){
		$(this).css("transform","rotate(0deg)");
	});

	//点击事件
	$("#image1").click(function(){
		$(this).attr("src","images/restaurant/nav/navi2_1.png");
		$("#image2").attr("src","images/restaurant/nav/navi1_2.png");
		$("#image3").attr("src","images/restaurant/nav/navi1_3.png");
		$("#image4").attr("src","images/restaurant/nav/navi1_4.png");
		$("#image5").attr("src","images/restaurant/nav/navi1_5.png");
		$("#image6").attr("src","images/restaurant/nav/navi1_6.png");
		$("#image7").attr("src","images/restaurant/nav/navi1_7.png");
	});

	$("#image2").click(function(){
		$("#image1").attr("src","images/restaurant/nav/navi1_1.png");
		$(this).attr("src","images/restaurant/nav/navi2_2.png");
		$("#image3").attr("src","images/restaurant/nav/navi1_3.png");
		$("#image4").attr("src","images/restaurant/nav/navi1_4.png");
		$("#image5").attr("src","images/restaurant/nav/navi1_5.png");
		$("#image6").attr("src","images/restaurant/nav/navi1_6.png");
		$("#image7").attr("src","images/restaurant/nav/navi1_7.png");
	});

    $("#image3").click(function(){
    	$("#image1").attr("src","images/restaurant/nav/navi1_1.png");
		$("#image2").attr("src","images/restaurant/nav/navi1_2.png");
		$(this).attr("src","images/restaurant/nav/navi2_3.png");
		$("#image4").attr("src","images/restaurant/nav/navi1_4.png");
		$("#image5").attr("src","images/restaurant/nav/navi1_5.png");
		$("#image6").attr("src","images/restaurant/nav/navi1_6.png");
		$("#image7").attr("src","images/restaurant/nav/navi1_7.png");

	});

	$("#image4").click(function(){
		$("#image1").attr("src","images/restaurant/nav/navi1_1.png");
		$("#image2").attr("src","images/restaurant/nav/navi1_2.png");
		$("#image3").attr("src","images/restaurant/nav/navi1_3.png");
		$(this).attr("src","images/restaurant/nav/navi2_4.png");
		$("#image5").attr("src","images/restaurant/nav/navi1_5.png");
		$("#image6").attr("src","images/restaurant/nav/navi1_6.png");
		$("#image7").attr("src","images/restaurant/nav/navi1_7.png");
	});

	$("#image5").click(function(){
		$("#image1").attr("src","images/restaurant/nav/navi1_1.png");
		$("#image2").attr("src","images/restaurant/nav/navi1_2.png");
		$("#image3").attr("src","images/restaurant/nav/navi1_3.png");
		$("#image4").attr("src","images/restaurant/nav/navi1_4.png");
		$(this).attr("src","images/restaurant/nav/navi2_5.png");
		$("#image6").attr("src","images/restaurant/nav/navi1_6.png");
		$("#image7").attr("src","images/restaurant/nav/navi1_7.png");
	});

	$("#image6").click(function(){
		$("#image1").attr("src","images/restaurant/nav/navi1_1.png");
		$("#image2").attr("src","images/restaurant/nav/navi1_2.png");
		$("#image3").attr("src","images/restaurant/nav/navi1_3.png");
		$("#image4").attr("src","images/restaurant/nav/navi1_4.png");
		$("#image5").attr("src","images/restaurant/nav/navi1_5.png");
		$(this).attr("src","images/restaurant/nav/navi2_6.png");
		$("#image7").attr("src","images/restaurant/nav/navi1_7.png");
	});

	$("#image7").click(function(){
		$("#image1").attr("src","images/restaurant/nav/navi1_1.png");
		$("#image2").attr("src","images/restaurant/nav/navi1_2.png");
		$("#image3").attr("src","images/restaurant/nav/navi1_3.png");
		$("#image4").attr("src","images/restaurant/nav/navi1_4.png");
		$("#image5").attr("src","images/restaurant/nav/navi1_5.png");
		$("#image6").attr("src","images/restaurant/nav/navi1_6.png");
		$(this).attr("src","images/restaurant/nav/navi2_7.png");
	});

	$("#changeImage").mousemove(function(){
		$("#upImage").show();
		$("#downImage").show();
	});

	$("#changeImage").mouseout(function(){
		$("#upImage").hide();
		$("#downImage").hide();
	});
});