<div id="confirm_close" class="textCenter inputButtons">
	<h4 class="cnf-msg">Do you want to close without saving?</h4>
	<input type="submit" class="btn btn-success" id="doclose" value="Yes" />
	<input type="button" class="btn btn-danger" id="dontclose" value="No" />
</div>
<script type="text/javascript">
$("#close").click(function() {
			var dialog = $("#confirm_close").data("kendoWindow");
			dialog.open();
			dialog.center();
		});

			//start for confirm close dialog
			var confirm_dialog = $("#confirm_close");
			confirm_dialog.kendoWindow({
				width : "450px",
				title : "Account Master",
				modal : true,
				draggable : false,
				resizable : false,
				visible : false

			});
			$("#doclose").click(function() {
				$("#accountform").attr("action", "close");
				$("#accountform").submit();
			});
			$("#dontclose").click(
					function() {
						var dialog = $("#confirm_close").data(
								"kendoWindow");
						dialog.close();
					});

			//end of confirm close dialog
		
	</script>