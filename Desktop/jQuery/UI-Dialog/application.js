let triggered = false;

$(function() {

    $('#dialog').dialog({
            autoOpen: false,
            width: 550,
            height: 350,
            modal: true,
            resizable: false,
            draggable: false
    })
	$(window).scroll(function() {
		var scrollTop = $(window).scrollTop();
		var docHeight = $(document).height();
		var winHeight = $(window).height();
		percentage = Math.floor((scrollTop / (docHeight - winHeight)) * 100);
		if (percentage >= 50 && triggered === false) {
		   $('#dialog').dialog('open'); 
		   triggered = true;
		   $("html,body").css("overflow","hidden");
		} 
	});
});  

