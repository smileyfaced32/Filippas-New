
$(window).load(function() {
    $("#mcs_container").mCustomScrollbar("vertical",400,"easeOutCirc",1.05,"auto","yes","yes",10);
});


jQuery(document).ready(function(){
	  jQuery(".jbgallery").jbgallery({
				caption   	: 	false,
				style 		:	"zoom",
				menu 		:	false,
				slideshow 	:	true,
				timers		: 	{
					fade		:	1000,
					interval  	:	6000
				}
				});
				
	var obj = jQuery("#slideshow-api");

	jQuery("#image-1").click(function(){obj.jbgallery("go", 1);});
	jQuery("#image-2").click(function(){obj.jbgallery("go", 2);});
	jQuery("#image-3").click(function(){obj.jbgallery("go", 3);});
	jQuery("#image-4").click(function(){obj.jbgallery("go", 4);});
	jQuery("#image-5").click(function(){obj.jbgallery("go", 5);});

	jQuery("#image-prev").click(function(){obj.jbgallery("left");}); 
	jQuery("#image-next").click(function(){obj.jbgallery("right");});
	});



$(function() {
		$( "#tabs" ).tabs();
	});


	$(function () { // run this code on page load (AKA DOM load)

		/* set variables locally for increased performance */
		var scroll_timer;
		var displayed = false;
		var $message = $('#message a');
		var $window = $(window);
		var top = $(document.body).children(0).position().top;

		/* react to scroll event on window */
		$window.scroll(function () {
			window.clearTimeout(scroll_timer);
			scroll_timer = window.setTimeout(function () { // use a timer for performance
				if($window.scrollTop() <= top) // hide if at the top of the page
				{
					displayed = false;
					$message.fadeOut(500);
				}
				else if(displayed == false) // show if scrolling down
				{
					displayed = true;
					$message.stop(true, true).show().click(function () { $message.fadeOut(500); });
				}
			}, 100);
		});
	});




// Create a jquery plugin that prints the given element.
jQuery.fn.print = function(){
	// NOTE: We are trimming the jQuery collection down to the
	// first element in the collection.
	if (this.size() > 1){
		this.eq( 0 ).print();
		return;
	} else if (!this.size()){
		return;
	}
 
	// ASSERT: At this point, we know that the current jQuery
	// collection (as defined by THIS), contains only one
	// printable element.
 
	// Create a random name for the print frame.
	var strFrameName = ("printer-" + (new Date()).getTime());
 
	// Create an iFrame with the new name.
	var jFrame = $( "<iframe name='" + strFrameName + "'>" );
 
	// Hide the frame (sort of) and attach to the body.
	jFrame
		.css( "width", "1px" )
		.css( "height", "1px" )
		.css( "position", "absolute" )
		.css( "left", "-9999px" )
		.appendTo( $( "body:first" ) )
	;
 
	// Get a FRAMES reference to the new frame.
	var objFrame = window.frames[ strFrameName ];
 
	// Get a reference to the DOM in the new frame.
	var objDoc = objFrame.document;
 
	// Grab all the style tags and copy to the new
	// document so that we capture look and feel of
	// the current document.
 
	// Create a temp document DIV to hold the style tags.
	// This is the only way I could find to get the style
	// tags into IE.
	var jStyleDiv = $( "<div>" ).append(
		$( "style" ).clone()
		);
 
	// Write the HTML for the document. In this, we will
	// write out the HTML of the current element.
	objDoc.open();
	objDoc.write( "<!DOCTYPE html>" );
	objDoc.write( "<html>" );
	objDoc.write( "<body>" );
	objDoc.write( "<head>" );
	objDoc.write( "<title>" );
	objDoc.write( document.title );
	objDoc.write( "</title>" );
	objDoc.write( jStyleDiv.html() );
	objDoc.write( "</head>" );
	objDoc.write( this.html() );
	objDoc.write( "</body>" );
	objDoc.write( "</html>" );
	objDoc.close();
 
	// Print the document.
	objFrame.focus();
	objFrame.print();
 
	// Have the frame remove itself in about a minute so that
	// we don't build up too many of these frames.
	setTimeout(
		function(){
			jFrame.remove();
		},
		(60 * 1000)
		);
}

