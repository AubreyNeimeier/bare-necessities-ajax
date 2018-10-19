$(document).ready(function() {
    attachListeners()
})


function weekly(){
   
    $.get("/events", function(events){
        
    })
    
}

function attachListeners(){

    $("#weeklyButton").on('click' , () => weekly())
}