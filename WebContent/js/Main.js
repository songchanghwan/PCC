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
    /* 히스토리 기능  입니다*/
    $(document).on('click','#nav a','.hide a',function(e){
    history.pushState(null, null, e.target.href);
    $('#section').load(e.target.href + ' #section>.article');
    event.preventDefault();
})
$(window).on('popstate', function(e){
    $('#section').load(location.href + ' #section>.article');
})
    /* 스크롤탑 기능 */
    var scrollTop = $('#nav a');
    var delay = 500;
    scrollTop.on('click', function(){
      $('html').animate({ scrollTop: 0 }, delay);
    });
});

