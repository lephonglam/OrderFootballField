function myFunction01() {
    var a = document.getElementById("tennguoidat").value.trim();
    var loitennguoidat = document.getElementById("loitennguoidat");

    if (a.length === 0) {
        loitennguoidat.innerHTML = "Hãy điền tên của bạn";
        loitennguoidat.style.display = "inline";
        return false;
    } else if (a.length > 50) {
        loitennguoidat.innerHTML = "Tên không dài quá 50 kí tự";
        loitennguoidat.style.display = "inline";
        return false;
    } else {
        loitennguoidat.style.display = "none";
        return true;
    }
}

function myFunction02() {
    var a = document.getElementById("sodienthoai").value.trim();
    var loisodienthoai = document.getElementById("loisodienthoai");

    if (a.length > 50) {
        loisodienthoai.innerHTML = "Số điện thoại không dài quá 50 kí tự";
        loisodienthoai.style.display = "inline";
        return false;
    } else if (a.length === 0) {
        loisodienthoai.innerHTML = "Hãy điền số điện thoại của bạn";
        loisodienthoai.style.display = "inline";
        return false;
    } else {
        loisodienthoai.style.display = "none";
        return true;
    }
}

function myFunction03() {
    var a = document.getElementById("khunggio").value;
    var loikhunggio = document.getElementById("loikhunggio");

    if (a === document.getElementsByTagName("option")[0].value ||
        a === document.getElementsByTagName("option")[1].value ||
        a === document.getElementsByTagName("option")[2].value ||
        a === document.getElementsByTagName("option")[3].value) {
        loikhunggio.style.display = "none";
        return true;
    } else {
        loikhunggio.innerHTML = "Hãy chọn khung giờ muốn đặt sân";
        loikhunggio.style.display = "inline";
        return false;
    }
}

function myFunction04() {
    var a = parseFloat(document.getElementById("sogio").value);
    var loisogio = document.getElementById("loisogio");

    if (isNaN(a) || a < 0.5) {
        loisogio.innerHTML = "Hãy nhập số giờ muốn đặt sân";
        loisogio.style.display = "inline";
        return false;
    } else {
        loisogio.style.display = "none";
        return true;
    }
}

function myFunction05() {
    var a = parseInt(document.getElementById("songuoichoi").value);
    var loisonguoichoi = document.getElementById("loisonguoichoi");

    if (isNaN(a) || a < 1) {
        loisonguoichoi.innerHTML = "Hãy nhập số người chơi";
        loisonguoichoi.style.display = "inline";
        return false;
    } else {
        loisonguoichoi.style.display = "none";
        return true;
    }
}

function myFunction06() {
    var a = parseInt(document.getElementById("sodoichoi").value);
    var loisodoichoi = document.getElementById("loisodoichoi");

    if (isNaN(a) || a <= 0) {
        loisodoichoi.innerHTML = "Hãy nhập số đội chơi hợp lệ";
        loisodoichoi.style.display = "inline";
        return false;
    } else {
        loisodoichoi.style.display = "none";
        return true;
    }
}

function myFunction07() {
    var khunggio = document.getElementById("khunggio").style.display;
    var sogio = document.getElementById("sogio").style.display;
    var tongtien = document.getElementById("tongtien");

    if (khunggio === "inline" || sogio === "inline") {
        tongtien.value = "Hãy lựa chọn thông tin đặt sân";
        tongtien.style.color = "red";
    } else {
        tongtien.value = "";
    }
}

function myFunction08(event) {
	if(document.getElementById("dongphuc").checked){
		document.getElementById("thuedongphuc").value = "checked";
	}else{
		document.getElementById("thuedongphuc").value = "unchecked";
	}
	if(document.getElementById("trongtai").checked){
		document.getElementById("thuetrongtai").value = "checked";
	}else{
		document.getElementById("thuetrongtai").value = "unchecked";
	}
	
    var check = myFunction01() && myFunction02() && myFunction03() &&
        myFunction04() && myFunction05() && myFunction06();
    if (!check) {
        myFunction01();
        myFunction02();
        myFunction03();
        myFunction04();
        myFunction05();
        myFunction06();
        event.preventDefault();
    } else {
        document.getElementById("formdatsan").submit();
    }
}