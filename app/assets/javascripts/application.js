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
//= require jquery.slick
//= require turbolinks
//= require_tree .


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

$(document).ready(function(){
    $(".dropdown-button").click(function() {
        $(".dropdown-menu").toggleClass("show-menu");
        $(".dropdown-menu > li").click(function(){
            $(".dropdown-menu").removeClass("show-menu");
        });
        $(".dropdown-menu.dropdown-select > li").click(function() {
            $(".dropdown-button").html($(this).html());
        });
    });
});
//= require carousel

$(document).ready(function(){
	$( ".datepicker" ).datepicker({
		dateFormat: 'mm/dd/yy'
	});
    var vid = document.getElementById("bgvid");
    console.log(vid);
    function vidFade() {
        vid.classList.add("stopfade");
    }

    vid.addEventListener('ended', function()
    {
// only functional if "loop" is removed
        vid.pause();
// to capture IE10
        vidFade();
    });


//= require jquery.slick

    // $( ".datepicker" ).datepicker({
	// 	defaultDate: +2y
	// });
		// minDate: 0
})

