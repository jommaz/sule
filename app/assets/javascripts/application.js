// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require jquery-ui
//= require turbolinks
//= require_tree .
<<<<<<< HEAD
//= require carousel

$(function() {
    $("#modal-1").on("change", function() {
        if ($(this).is(":checked")) {
            $("body").addClass("modal-open");
        } else {
            $("body").removeClass("modal-open");
        }
    });

    $(".modal-fade-screen, .modal-close").on("click", function() {
        $(".modal-state:checked").prop("checked", false).change();
    });

    $(".modal-inner").on("click", function(e) {
        e.stopPropagation();
    });
});
=======
<<<<<<< HEAD
//= require carousel
$(document).ready(function(){
	$( ".datepicker" ).datepicker({
		dateFormat: 'dd-mm-yy'
	});
	// $( ".datepicker" ).datepicker({
	// 	defaultDate: +2y
	// });
		// minDate: 0
})
=======
//= require jquery.slick
>>>>>>> 0b342649df6b95a38eacfd1398a6cda7c856ab06
>>>>>>> 5001d40fe7720e2cd5468dfbf10b5b35d065e3c3
