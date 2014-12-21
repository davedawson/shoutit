jQuery(document).ready(function() {
/* Playback token
  From here: https://github.com/rdio/hello-web-playback
  TODO: Update this for the live site. Set up dev/production environment check here?
*/
  var shout = {
    countdown: function(){
      	expires = $('.countdown p').html();
    	$(".down").countdown(expires, function(event) {
    	  //  Convert to %
    	  // percent = event.strftime('%M.%S')/60
	      $('h1').css('opacity', '0.' + event.strftime('%M%S') + '');
	      // $(this).css('display', event.strftime('%D days %H:%M:%S'));
	    });
    	console.log(expires);
    },
    fitText: function() {
    	$("h1").fitText(0.7);
    }  
  };
    /*-------------------------------------------
        Initial Actions
    -------------------------------------------*/

    // Call methods like this

    shout.countdown();
    shout.fitText();

});