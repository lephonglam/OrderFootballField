$(document).ready(function() {
    $(document).click(function(event) {
        var click = $(event.target);
        var open = $(".navbar-collapse").hasClass("show");
        if (open === true && !click.hasClass("navbar-toggler") && !click.hasClass("dropdown-toggle")) {
            $(".navbar-toggler").click();
        }
    });
});

function tensan() {
    var url = new URL(window.location);
    var tensan = url.searchParams.get("tensan");
    if (tensan == "Trung_Hoa") {
        document.getElementById("tensan").value = "Sân bóng nhân tạo Trung Hòa";
        document.getElementById("diachi").value = "Ngõ 55-57, đường Trần Phú, Hà Đông (trong trường Đại học Nghệ thuật Trung ương)";
        document.getElementById("lienhe").value = "0962332538 - Anh Hoàng";
    } else if (tensan == "Dai_hoc_y") {
        document.getElementById("tensan").value = "Sân bóng Đại học Y Hà Nội";
        document.getElementById("diachi").value = "Trường Đại học Y Hà Nội, Khương Thượng, Đống Đa, Hà Nội";
        document.getElementById("lienhe").value = "085.865.8899";
    } else if (tensan == "Bach_khoa") {
        document.getElementById("tensan").value = "Sân bóng Đại Bách khoa Hà Nội";
        document.getElementById("diachi").value = "A1 Lê Thanh Nghị, Bách Khoa, Hai Bà Trưng, Hà Nội";
        document.getElementById("lienhe").value = "090.479.5885";
    }
}
tensan();

function myFunction01() {
    var a = document.getElementById("tennguoidat").value;
    var b = a.trimStart();
    if (b.length == 0) {
        document.getElementById("loitennguoidat").innerHTML = "Hãy điền tên của bạn";
        document.getElementById("loitennguoidat").style.display = "inline";
    } else if (b.length > 50) {
        document.getElementById("loitennguoidat").innerHTML = "Tên không dài quá 50 kí tự";
        document.getElementById("loitennguoidat").style.display = "inline";
    } else {
        document.getElementById("loitennguoidat").style.display = "none";
    }
}

function myFunction02() {
    var a = document.getElementById("sodienthoai").value;
    var b = a.toString();
    var c = b.trimStart();
    if (c.length > 50) {
        document.getElementById("loisodienthoai").innerHTML = "Số điện thoại không dài quá 50 kí tự";
        document.getElementById("loisodienthoai").style.display = "inline";
    } else if (c.length == 0) {
        document.getElementById("loisodienthoai").innerHTML = "Hãy điền số điện thoại của bạn";
        document.getElementById("loisodienthoai").style.display = "inline";
    } else {
        document.getElementById("loisodienthoai").style.display = "none";
    }
}

function myFunction03() {
    var a = document.getElementById("khunggio").value;
    if (a == document.getElementsByTagName("option")[0].innerHTML) {
        document.getElementById("loikhunggio").style.display = "none";
    } else if (a == document.getElementsByTagName("option")[1].innerHTML) {
        document.getElementById("loikhunggio").style.display = "none";
    } else if (a == document.getElementsByTagName("option")[2].innerHTML) {
        document.getElementById("loikhunggio").style.display = "none";
    } else if (a == document.getElementsByTagName("option")[3].innerHTML) {
        document.getElementById("loikhunggio").style.display = "none";
    } else {
        document.getElementById("loikhunggio").innerHTML = "Hãy chọn khung giờ muốn đặt sân";
        document.getElementById("loikhunggio").style.display = "inline";
    }
}

function myFunction04() {
    var a = document.getElementById("sogio").value;
    if (a >= 0 && a < 0.5) {
        document.getElementById("loisogio").innerHTML = "Hãy nhập số giờ muốn đặt sân";
        document.getElementById("loisogio").style.display = "inline";
    } else if (a < 0) {
        document.getElementById("loisogio").innerHTML = "Chỉ được phép nhập số dương";
        document.getElementById("loisogio").style.display = "inline";
    } else {
        document.getElementById("loisogio").style.display = "none";
    }
}

function myFunction05() {
    var a = document.getElementById("songuoichoi").value;
    if (a < 1) {
        document.getElementById("loisonguoichoi").innerHTML = "Hãy nhập số người chơi";
        document.getElementById("loisonguoichoi").style.display = "inline";
    } else {
        document.getElementById("loisonguoichoi").style.display = "none";
    }
}

function myFunction06() {
    var a = document.getElementById("sodoichoi").value;
    var b = a.toString();
    var c = b.trimStart();
    if (c.length == 0 || a >= 0 && a < 2) {
        document.getElementById("loisodoichoi").innerHTML = "Hãy nhập số đội chơi";
        document.getElementById("loisodoichoi").style.display = "inline";
    } else if (a < 0) {
        document.getElementById("loisodoichoi").innerHTML = "Chỉ được phép nhập số dương";
        document.getElementById("loisodoichoi").style.display = "inline";
    } else {
        document.getElementById("loisodoichoi").style.display = "none";
        return document.getElementById("sodoichoi").value;
    }
}
document.getElementById("formdatsan").addEventListener("submit", event => {
    myFunction07(event)
})

function myFunction07(event) {
    event.preventDefault();
    myFunction01();
    myFunction02();
    myFunction03();
    myFunction04();
    myFunction05();
    myFunction06();
}

function myFunction09() {
    var url = new URL(window.location);
    var tensan = url.searchParams.get("tensan");
    if (tensan == "Trung_Hoa") {
        var a = document.getElementById("khunggio").value;
        var tienkhunggio;
        if (a == "06:00 - 16:00") {
            tienkhunggio = 300000;
        } else if (a == "16:00 - 17:30") {
            tienkhunggio = 600000;
        } else if (a == "17:30 - 20:30") {
            tienkhunggio = 800000;
        } else if (a == "20:30 - 22:00") {
            tienkhunggio = 400000;
        } else {
            return;
        }
    } else if (tensan == "Dai_hoc_y") {
        var a = document.getElementById("khunggio").value;
        var tienkhunggio;
        if (a == "06:00 - 16:00") {
            tienkhunggio = 450000;
        } else if (a == "16:00 - 17:30") {
            tienkhunggio = 500000;
        } else if (a == "17:30 - 20:30") {
            tienkhunggio = 650000;
        } else if (a == "20:30 - 22:00") {
            tienkhunggio = 500000;
        } else {
            return;
        }
    } else if (tensan == "Bach_khoa") {
        var a = document.getElementById("khunggio").value;
        var tienkhunggio;
        if (a == "06:00 - 16:00") {
            tienkhunggio = 400000;
        } else if (a == "16:00 - 17:30") {
            tienkhunggio = 600000;
        } else if (a == "17:30 - 20:30") {
            tienkhunggio = 800000;
        } else if (a == "20:30 - 22:00") {
            tienkhunggio = 600000;
        } else {
            return;
        }
    }
    if (tensan == "Trung_Hoa") {
        var tiendongphuc;
        if (document.getElementById("dongphuc").checked) {
            tiendongphuc = 300000;
        } else {
            tiendongphuc = 0;
        }
    } else if (tensan == "Dai_hoc_y") {
        var tiendongphuc;
        if (document.getElementById("dongphuc").checked) {
            tiendongphuc = 310000;
        } else {
            tiendongphuc = 0;
        }
    } else if (tensan == "Bach_khoa") {
        var tiendongphuc;
        if (document.getElementById("dongphuc").checked) {
            tiendongphuc = 320000;
        } else {
            tiendongphuc = 0;
        }
    }
    if (tensan == "Trung_Hoa") {
        var tientrongtai;
        if (document.getElementById("trongtai").checked) {
            tientrongtai = 200000;
        } else {
            tientrongtai = 0;
        }
    } else if (tensan == "Dai_hoc_y") {
        var tientrongtai;
        if (document.getElementById("trongtai").checked) {
            tientrongtai = 210000;
        } else {
            tientrongtai = 0;
        }
    } else if (tensan == "Bach_khoa") {
        var tientrongtai;
        if (document.getElementById("trongtai").checked) {
            tientrongtai = 220000;
        } else {
            tientrongtai = 0;
        }
    }
    var tongsogio = parseFloat(document.getElementById("sogio").value);
    if (isNaN(tongsogio)) {
        return;
    }
    var sodoi = parseFloat(document.getElementById("sodoichoi").value);
    if (isNaN(sodoi)) {
        return;
    }
    var tongtien = tienkhunggio * tongsogio + tiendongphuc * sodoi + tientrongtai * tongsogio;
    document.getElementById("tongtien").value = tongtien + " VNĐ";
    document.getElementById("tongtien").style.color = "black";
}