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
        document.getElementById("s_img").src="./img/indeximg"+x+".png";
    }else{
        x=1;
        document.getElementById("s_img").src="./img/indeximg"+x+".png";
    } 
}
function minus(){
    if(x>1){
        x--;
        document.getElementById("s_img").src="./img/indeximg"+x+".png";
    }else{
        x=3;
        document.getElementById("s_img").src="./img/indeximg"+x+".png";
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