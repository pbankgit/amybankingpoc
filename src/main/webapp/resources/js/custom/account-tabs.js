function openDiv(id) {
	var divId = "#" + id;
	closeAll();
	$(divId).show();
}

function closeAll() {
	$('#divaccountnames').hide();
	$('#divaccountnominees').hide();
	$('#divaccountgeneral').hide();
}

function selectTab(tab) {
	if (tab == 'general') {
		$('#acct-general-tab').addClass('active');
		$('#acct-names-tab').removeClass('active');
		$('#acct-nominees-tab').removeClass('active');
	} else if (tab == 'names') {
		$('#acct-names-tab').addClass('active');
		$('#acct-general-tab').removeClass('active');
		$('#acct-nominees-tab').removeClass('active');
	} else if (tab == 'nominees') {
		$('#acct-nominees-tab').addClass('active');
		$('#acct-general-tab').removeClass('active');
		$('#acct-names-tab').removeClass('active');
	}
}
function getAccntTabSectionData(reqUrl)
{
  	$.ajax({
  		   url: reqUrl,
  		   type: 'GET',
  		   dataType: 'json',
  		   success: function(data) {
  			$('#acctid').val(data.generalAccountId);
  			$('#subacctid').val(data.generalSubAccountId);
  			$('#accountname').val(data.accountName);
  			//if(data.openingDate != undefined)
  			//	$('#openingdate').val(data.openingDate);
  			//if(data.closingDate != undefined)
  			//	$('#closingdate').val(data.closingDate);
  			$('#accstatus').val(data.statusName);
  		}
  	});
  	
}
