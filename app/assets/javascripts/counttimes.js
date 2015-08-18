$(document).ready(function(){
  var counter = 11;
    var myInterval = setInterval(function () {
    --counter;
    console.log(counter);
    if (counter== 1){
      clearInterval(myInterval);
      var counter = 11;
      }
    }, 100);
});
