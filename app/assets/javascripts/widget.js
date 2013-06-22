//var rbonus;
//var pnum;
//var result;

var bonuscash = 5000;
var peernum = 3;
var payout = bonuscash/peernum;

var rbonus = document.getElementById("referralbonus");
var pnum = document.getElementById("peersnumber");
var calcvalue = document.getElementById("popp");

function update(){
    rbonus.innerHTML = "$" + bonuscash;
    pnum.innerHTML = peernum;
    payout = Math.round(Number(bonuscash)/Number(peernum));
    calcvalue.innerHTML = "$" + payout.toString();
}

function lessbonus(){
    if (bonuscash > 500) {
        bonuscash = bonuscash - 500
    }
    update();
}

function morebonus(){
    if (bonuscash < 15000) {
        bonuscash = bonuscash + 500
    }
    update();
}

function lesspeers(){
    if (peernum > 1){
        peernum = peernum - 1;
    }
    update();
}

function morepeers(){
    if (peernum < 5){
        peernum = peernum + 1;
    }
    update();
}