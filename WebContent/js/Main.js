$(document).ready(function(){
/* 슬라이드 메뉴 기능 */
$(".m_menu>span").on('click',function(){
    var submenu = $(this).next("ul");
    if(submenu.is(":visible")){
        submenu.slideUp();
    }else{
        submenu.slideDown();
    }
}).mouseover(function(){
        $(this).next("ul").slideDown();
});
});
