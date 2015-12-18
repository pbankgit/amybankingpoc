$(document).ready(function() {
	  var confirm_dialog = $("#confirm_close");
	  confirm_dialog.kendoWindow({
          width: "300px",
          height: "200px",
          title: "Customer",
          modal: true,
          draggable: false,
          resizable: false,
          visible: false
          
      });
      $("#yes").click(function() {
    	/*  RequestDispatcher dispatcher =
    	       getServletContext().getRequestDispatcher("/launcher.jsp";
    	dispatcher.forward(request, response);
*/
    
      });
      $("#no").click(function() {
    	var dialog = $("#confirm_close").data("kendoWindow");
  		dialog.close();
      });

});
