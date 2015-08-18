$(document).ready(function(){
  $("#toggle-one").on("click",function(e){
        e.preventDefault();
        $("#timediv").toggle();
  $(this).bootstrapToggle('toggle');
  });
});
