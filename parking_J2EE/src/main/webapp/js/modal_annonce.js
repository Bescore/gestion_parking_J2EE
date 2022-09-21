/**
 * Modal_annonce
 */
 
 $(document).ready(function(){
	
	   function mod() {
  $("#modal_annonce").modal('show');
    }
    
	if($("#modal_content").text().length>0) {
	setTimeout(mod,5000);
    };
  })
  
  console.log($("#modal_content").text().length);
    
   
