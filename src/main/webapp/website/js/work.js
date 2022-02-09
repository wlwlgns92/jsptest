function work() {
	
	var material1 = document.getElementById("signupform").material1.checked;
	var material2 = document.getElementById("signupform").material2.checked;
	var printing1 = document.getElementById("signupform").printing1.checked;
	var printing2 = document.getElementById("signupform").printing2.checked;
	var coating1 = document.getElementById("signupform").coating1.checked;
	var coating2 = document.getElementById("signupform").coating2.checked;
	var stick1 = document.getElementById("signupform").stick1.checked;
	var stick2 = document.getElementById("signupform").stick2.checked;
	var bond1 = document.getElementById("signupform").bond1.checked;
	var bond2 = document.getElementById("signupform").bond2.checked;
	var packing1 = document.getElementById("signupform").packing1.checked;
	var packing2 = document.getElementById("signupform").packing2.checked;
	var fdate = document.getElementById("signupform").fdate.value;
	var ftime = document.getElementById("signupform").ftime.value

	if (!material1 && !material2) {
		document.getElementById("materialmsg").innerHTML = "작업상태를 체크해주세요";
		return false;
	} else {
		document.getElementById("materialmsg").innerHTML = "체크";
	}

	if (!printing1 && !printing2) {
		document.getElementById("printingmsg").innerHTML = "작업상태를 체크해주세요";
		return false;
	} else {
		document.getElementById("printingmsg").innerHTML = "체크";
	}

	if (!coating1 && !coating2) {
		document.getElementById("coatingmsg").innerHTML = "작업상태를 체크해주세요";
		return false;
	} else {
		document.getElementById("coatingmsg").innerHTML = "체크";
	}

	if (!stick1 && !stick2) {
		document.getElementById("stickmsg").innerHTML = "작업상태를 체크해주세요";
		return false;
	} else {
		document.getElementById("stickmsg").innerHTML = "체크";
	}

	if (!bond1 && !bond2) {
		document.getElementById("bondmsg").innerHTML = "작업상태를 체크해주세요";
		return false;
	} else {
		document.getElementById("bondmsg").innerHTML = "체크";
	}
	
	if (!packing1 && !packing2) {
		document.getElementById("packingmsg").innerHTML = "작업상태를 체크해주세요";
		return false;
	} else {
		document.getElementById("packingmsg").innerHTML = "체크";
	}


	if (fdate == "") {
		document.getElementById("fdatemsg").innerHTML = "날짜를 입력해 주세요 ";
		return false;
	} else {
		document.getElementById("fdatemsg").innerHTML = "체크";
	}

	if (ftime == "") {
		document.getElementById("ftimemsg").innerHTML = "시간을 입력해 주세요";
		return false;
	} else {
		document.getElementById("ftimemsg").innerHTML = "체크";
	}
}