window.addEventListener("message",function(event){
	switch (event["data"]["Action"]){
		case "Open":
			if ($("#Request").css("display") === "none"){
				$("#Request").css("display","block");
			}

			$("#RequestM").html(event["data"]["Message"]);
			$("#RequestY").html(event["data"]["Accept"]);
			$("#RequestU").html(event["data"]["Reject"]);
		break;

		case "Y":
			$("#Request").css("display","none");
			$.post("http://Request/Sucess");
		break;

		case "U":
			$("#Request").css("display","none");
			$.post("http://Request/Failure");
		break;
	}
});