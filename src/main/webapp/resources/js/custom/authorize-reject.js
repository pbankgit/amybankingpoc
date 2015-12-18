$(document).ready(function() {
	//start for authorization confirmation dialog
	var confirm_dialog = $("#confirm_authorization");
	confirm_dialog.kendoWindow({
		width : "450px",
		title : "Account Master",
		modal : true,
		draggable : false,
		resizable : false,
		visible : false
	});
	$("#yes").click(function() {
		var dialog = $("#confirm_authorization").data("kendoWindow");
		dialog.close();
		authorizeAccount();
	});
	$("#no").click(function() {
		var dialog = $("#confirm_authorization").data("kendoWindow");
		dialog.close();
	});
	//end of authorization confirmation dialog

	var window = $("#rejectwindow");
	window.kendoWindow({
		width : "450px",
		title : "Account Master",
		modal : true,
		draggable : false,
		resizable : false,
		visible : false
	});

	$("#proceed").click(function() {
		var remark = $("#remark").val();
		$("#comment").val(remark);
		var dialog = $("#rejectwindow").data("kendoWindow");
		dialog.close();

		rejectAccount();
	});
	$("#cancel").click(function() {
		var dialog = $("#rejectwindow").data("kendoWindow");
		dialog.close();
	});

	$("#authorize").click(function() {

		var dialog = $("#confirm_authorization").data("kendoWindow");
		dialog.open();
		dialog.center();
	});
	$("#reject").click(function() {
		var dialog = $("#rejectwindow").data("kendoWindow");
		dialog.open();
		dialog.center();
	});

	function authorizeAccount() {
		//var cnId = $('#cnid').val();
		//alert("authorized fun is called="+cnId);
		$("#accountform").attr("action", "authorizeaccount");
		$("#accountform").submit();
	}

	function rejectAccount() {
		//var remark = $('#remark').val();
		//var cnId = $('#cnid').val();
		//alert("reject fun is called");
		$("#accountform").attr("action", "rejectaccount");
		$("#accountform").submit();
	}
});