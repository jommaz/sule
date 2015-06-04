// $(document).ready(function(){
//     $(".datepicker").datepicker({
//         dateFormat: 'mm/dd/yy'
//     });
//     // $( ".datepicker" ).datepicker({
//     //  defaultDate: +2y
//     // });
//         // minDate: 0

//     $("#modal-1").on("change", function() {
//         if ($(this).is(":checked")) {
//             $("body").addClass("modal-open");
//         } else {
//             $("body").removeClass("modal-open");
//         }
//     });

//     $(".modal-fade-screen, .modal-close").on("click", function() {
//         $(".modal-state:checked").prop("checked", false).change();
//     });

//     $(".modal-inner").on("click", function(e) {
//         e.stopPropagation();
//     });

//     $(".dropdown-button").click(function() {
//         $(".dropdown-menu").toggleClass("show-menu");
//         $(".dropdown-menu > li").click(function(){
//             $(".dropdown-menu").removeClass("show-menu");
//         });
//         $(".dropdown-menu.dropdown-select > li").click(function() {
//             $(".dropdown-button").html($(this).html());
//         });
//     });
// })