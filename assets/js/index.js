function show() {
    var header_nav1=document.getElementById("header_nav1");
    if(header_nav1.style.display=="block"){
        header_nav1.style.display="none";
    }else{
        header_nav1.style.display="block";
        
    }
    
}
/*圖片變換*/
x=1;
function add(){
    if(x<3){
        x++;
        document.getElementById("s_img").src="assets/img/indeximg"+x+".png";
    }else{
        x=1;
        document.getElementById("s_img").src="assets/img/indeximg"+x+".png";
    } 
}
function minus(){
    if(x>1){
        x--;
        document.getElementById("s_img").src="assets/img/indeximg"+x+".png";
    }else{
        x=3;
        document.getElementById("s_img").src="assets/img/indeximg"+x+".png";
    } 
}


/*good*/
function minusNUM(num){
    let input = Number(document.getElementsByClassName('number')[num].value);
    if(input != 1){
        document.getElementsByClassName('number')[num].value = input -1;
    }
}
function addNUM(num){
    let input = Number(document.getElementsByClassName('number')[num].value);
    document.getElementsByClassName('number')[num].value = input +1;
}

/*圖片輪播*/
var imgArray = [
    'assets/img/indeximg1.png',
    'assets/img/indeximg2.png',
    'assets/img/indeximg3.png'],
    curIndex = 0;
    imgDuration = 3000;

function slideShow() {
    document.getElementById('s_img').className += "fadeOut";
    setTimeout(function() {
        document.getElementById('s_img').src = imgArray[curIndex];
        document.getElementById('s_img').className = "";
    },1000);
    curIndex++;
    if (curIndex == imgArray.length) { curIndex = 0; }
    setTimeout(slideShow, imgDuration);
}
slideShow();

/*隨機置換*/
function setImage()
{
var img = new Array();
var url = new Array();
img[0] = "assets/img/doctorstrange.png"; url[0]="good-17.html";
img[1] = "assets/img/bridsofprey.png";url[1]="good-8.html";
img[2] = "assets/img/freeguy.png";url[2]="good-3.html";
img[3] = "assets/img/mitty.png";url[3]="good-2.html";
img[4] = "assets/img/spiritedaway.png";url[4]="good-14.html";
img[5] = "assets/img/soul.png";url[5]="good-10.html";
img[6] = "assets/img/moon.jpg";url[6]="good-6.html";
img[7] = "assets/img/yourname.png";url[7]="good-12.html";
img[8] = "assets/img/purelove.png";url[8]="good-11.html";

var iImage = Math.floor(Math.random() * img.length);
document.getElementById("rec_img1").src = img[iImage];
document.getElementById("rec_img_html").href = url[iImage];
}

setImage();