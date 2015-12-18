function getGLData(url)
  {
  	var result;
  	
  	$.ajax({
  		   url: url,
  		   type: 'GET',
  		   dataType: 'json',
  		   success: function(data) {
  			$("#glname").val(data.glName); 
  		}
  	});
  	
  }
  
function getCustData(url)
{
	var result;
	
	$.ajax({
		   url: url,
		   type: 'GET',
		   dataType: 'json',
		   success: function(data) {
			$("#customername").val(data.customerName); 
		}
	});
	
}