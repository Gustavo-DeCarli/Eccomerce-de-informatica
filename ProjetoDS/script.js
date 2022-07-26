function myFunction() {
    var $radio1 = document.getElementById("paga");
    var $radio2 = document.getElementById("paga").value;
    var $div1 = document.getElementById("m1");
    if($radio1.checked && $radio2==2){
        $div1.removeAttribute("hidden"); 
    }else{
        $div1.setAttribute("hidden", "hidden");
    }
}