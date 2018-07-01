$(document).ready(function(){
    $(".m_menu>span").click(function(){
        var submenu = $(this).next("ul");
        if(submenu.is(":visible")){
            submenu.slideUp();
        }else{
            submenu.slideDown();
        }
    });   
        $(document).on('click','#nav a','.hide a',function(e){
        history.pushState(null, null, e.target.href);
        $('#section').load(e.target.href + ' #section>.article');
        event.preventDefault();
    })
    $(window).on('popstate', function(e){
        $('#section').load(location.href + ' #section>.article');
    })
});

