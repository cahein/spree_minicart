//= require spree/frontend/jquery.hoverIntent.minified

var onMinicart = false;

function slideUpMinicart() {
    if (!onMinicart) {
        $("#minicart").slideUp();
    }
    return true;
}

(function($){
    $(document).ready(function(){
        var config = {
            over: function(){
//                console.log("slideDown minicart");
                $("#minicart").slideDown();
            },
            timeout: 250, // number = milliseconds delay before onMouseOut
            out: function(){
                setTimeout(function() {
                    slideUpMinicart();
                }, 200);
            }
        };
        $("#link-to-cart").hoverIntent( config );


        $("#minicart").mouseenter(function() {
            onMinicart = true;
//            console.log("enter Minicart: " + onMinicart);
        });
        $("#minicart").mouseleave(function() {
            onMinicart = false;
//            console.log("leave Minicart: " + onMinicart);

            $("#minicart").slideUp();
        });

        /* remove item from cart  */ 
        $(document).on("click", "form#update-minicart a.minicart_remove", function(e){
//            console.info("minicart click to delete item");
            
            $(this).parent().siblings("div[data-hook='minicart_item_quantity']").find("input.line_item_quantity").val(0);
            $(this).parents("form").first().submit();
            e.preventDefault();

            if (document.location.pathname === "/cart") {
                setTimeout(function() {
//                    console.info("will reload cart page");
                    document.location.reload();
                }, 500);
            }             
        });

        $(document).on("ajax:beforeSend", "form[data-remote]", function(){
            $("#progress").slideDown();
        });

        $(document).on("ajax:complete", "form[data-remote]", function(){
            $("#progress").slideUp();
        });
    });
})(jQuery);
