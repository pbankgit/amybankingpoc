



	/**
	 * This method is responsible for loading the reports in the report div.
	 * 
	 */
	function generateReport(reportName, format) {
	
		//reportName = "gl_account_list.rptdesign";
		//	here relative url is given if relative url is not working try giving full url
		var reporturl ="previewreport?reportName="+reportName+"&reportFormat="+format;
		
		reporturl = appendParameters(reporturl);
		
		$("#reportData").html("Loading...<br><img src='resources/images/loading.gif' align='middle' >");
		alert(reporturl);
        $('#reportData').load(reporturl ,function(response, status, xhr) {
        	
          if (status == "error") {
		    var msg = "Sorry but there was an error getting details ! ";
			$("#reportData").html(msg + xhr.status + " " + xhr.statusText);
		  }
	    });
        
       
	}
	
	/**
	 * Download report function
	 * 
	 * @param format
	 */
	function downloadReport(reportName, format){
		
		reporturl = "previewreport?reportName="+reportName+"&reportFormat="+format;
		reporturl = appendParameters(reporturl);
		window.location = reporturl
		
	}
	
	function appendParameters(reporturl)
	{
		if($('#glid').length > 0)
		{
			reporturl = reporturl+"&glId="+$('#glid').val();
		}
		
		return reporturl;
	}
