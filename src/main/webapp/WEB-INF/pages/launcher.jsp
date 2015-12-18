<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html>
<head>
<title>Launcher</title>
<%@ include file="includes/allincludes.jsp" %>
</head>

<body>
<!--header start-->
	<jsp:include page="includes/header.jsp">
		<jsp:param name="pagetitle" value="GL Master" />
	</jsp:include>	
<!--header end-->
 <section id="container" class="main-container">

<kendo:splitter name="vertical" orientation="horizontal">
    <kendo:splitter-panes>
        <kendo:splitter-pane id="left-pane" collapsible="true" max="500px" size="230px" style="height: 638px;">
            <kendo:splitter-pane-content>
            <!-- menu -->
            <kendo:treeView name="menus" dataTextField="menuName" dataUrlField="linkedTo">
				<kendo:dataSource>
					<kendo:dataSource-transport read="getmenus">
					</kendo:dataSource-transport>
					<kendo:dataSource-schema>
						<kendo:dataSource-schema-hierarchical-model id="menu_id" hasChildren="hasSubMenus">
							
						</kendo:dataSource-schema-hierarchical-model>
					</kendo:dataSource-schema>
					
				</kendo:dataSource>
			</kendo:treeView>
            </kendo:splitter-pane-content>
            </kendo:splitter-pane>
            <kendo:splitter-pane id="right-pane" collapsible="false">
            <kendo:splitter-pane-content>
            <!-- tabs -->
            <div id="tabstrip">
                            <ul>
                                <li class="k-state-active">
                                    Quick Links
                                </li>
                                <li>
                                    Dashboard
                                </li>
                                <li>
                                    Reports
                                </li>
                                <li>
                                    Notifications
                                </li>
                                <li>
                                    My Notes
                                </li>
                            </ul>
                            <div>
                                <div class="">
                                   <p>&nbsp;</p>
                                   <p>&nbsp;</p>
                                   <p>&nbsp;</p>
                                   <p>&nbsp;</p>
                                   <p>&nbsp;</p>
                                   <p>&nbsp;</p>
                                   <p>&nbsp;</p>
                                   <p>&nbsp;</p>
                                   <p>&nbsp;</p>
                                   <p>&nbsp;</p>
                                   <p>&nbsp;</p>
                                   <p>&nbsp;</p>
                                   <p>&nbsp;</p>
                                   <p>&nbsp;</p>
                                   <p>&nbsp;</p>
                                </div>
                            </div>
                            <div>
                                <div class="">
                                   <p>&nbsp;</p>
                                   <p>&nbsp;</p>
                                   <p>&nbsp;</p>
                                   <p>&nbsp;</p>
                                   <p>&nbsp;</p>
                                   <p>&nbsp;</p>
                                   <p>&nbsp;</p>
                                   <p>&nbsp;</p>
                                   <p>&nbsp;</p>
                                   <p>&nbsp;</p>
                                   <p>&nbsp;</p>
                                   <p>&nbsp;</p>
                                   <p>&nbsp;</p>
                                   <p>&nbsp;</p>
                                   <p>&nbsp;</p>
                                </div>
                            </div>
                            <div>
                                <div class="">
                                   <p>&nbsp;</p>
                                   <p>&nbsp;</p>
                                   <p>&nbsp;</p>
                                   <p>&nbsp;</p>
                                   <p>&nbsp;</p>
                                   <p>&nbsp;</p>
                                   <p>&nbsp;</p>
                                   <p>&nbsp;</p>
                                   <p>&nbsp;</p>
                                   <p>&nbsp;</p>
                                   <p>&nbsp;</p>
                                   <p>&nbsp;</p>
                                   <p>&nbsp;</p>
                                   <p>&nbsp;</p>
                                   <p>&nbsp;</p>
                                </div>
                            </div>
                            <div>
                                <div class="">
                                   <p>&nbsp;</p>
                                   <p>&nbsp;</p>
                                   <p>&nbsp;</p>
                                   <p>&nbsp;</p>
                                   <p>&nbsp;</p>
                                   <p>&nbsp;</p>
                                   <p>&nbsp;</p>
                                   <p>&nbsp;</p>
                                   <p>&nbsp;</p>
                                   <p>&nbsp;</p>
                                   <p>&nbsp;</p>
                                   <p>&nbsp;</p>
                                   <p>&nbsp;</p>
                                   <p>&nbsp;</p>
                                   <p>&nbsp;</p>
                                </div>
                            </div>
                            <div>
                                <div class="">
                                   <p>&nbsp;</p>
                                   <p>&nbsp;</p>
                                   <p>&nbsp;</p>
                                   <p>&nbsp;</p>
                                   <p>&nbsp;</p>
                                   <p>&nbsp;</p>
                                   <p>&nbsp;</p>
                                   <p>&nbsp;</p>
                                   <p>&nbsp;</p>
                                   <p>&nbsp;</p>
                                   <p>&nbsp;</p>
                                   <p>&nbsp;</p>
                                   <p>&nbsp;</p>
                                   <p>&nbsp;</p>
                                   <p>&nbsp;</p>
                                </div>
                            </div>
                        </div>
            </kendo:splitter-pane-content>
            </kendo:splitter-pane>
            </kendo:splitter-panes>
            </kendo:splitter>

      

      <div id="popup-window" class="textCenter inputButtons">
      	<h4><span id="msg"></span></h4>
      	<input type="button" name="close" class="btn btn-danger" value="OK" id="close" />
      </div>
      <div id="error-popup-window" class="textCenter inputButtons">
      	<h4><span id="msg1"></span></h4>
      	<input type="button" name="close" class="btn btn-danger" value="OK" id="closepopup" />
      </div>
      <!--main content end-->
      <!--footer start-->
			<%@ include file="includes/footer.jsp" %>
      <!--footer end-->
  </section> 
  			<script>
                $(document).ready(function() {
                    $("#tabstrip").kendoTabStrip({
                        animation:  {
                            open: {
                                effects: "fadeIn"
                            }
                        }
                    });
                });
            </script>
   
   <script>

$(document).ready(function() {
	
	var popup_dialog = $("#popup-window");
	var cnid = <%=request.getAttribute("cnid")%>;
	var popupContent = 'Change Notification Id :  '+ cnid;
	var popupTitle = '<%=request.getAttribute("title")%>';
	
	popup_dialog.kendoWindow({
        width: "450px",
        title: popupTitle,
        modal: true,
        draggable: false,
        resizable: false,
        visible: false
        
    });
	var popup_dialog = $("#error-popup-window");
	popup_dialog.kendoWindow({
        width: "400px",
        height: "120px",
        title: "Error message",
        modal: true,
        draggable: false,
        resizable: false,
        visible: false
    });
	$("#closepopup").click(function() {
		var dialog = $("#error-popup-window").data("kendoWindow");
		dialog.close();
	})
	
	if(cnid!=null)
	{
		var dialog = $("#popup-window").data("kendoWindow");
		$("#msg").html(popupContent);
	 	dialog.open();
	 	dialog.center();
	
	}	
	
	$("#close").click(function() {
		var dialog = $("#popup-window").data("kendoWindow");
		dialog.close();
	})
	  
	$( "#next" ).click(function() {
		var grid = $("#history").data("kendoGrid");
		//alert(grid);
		if(grid != undefined)
		{
			var selectedRows = grid.select();
		    for (var i = 0; i < selectedRows.length; i++) {
		      var dataItem = grid.dataItem(selectedRows[i]);
		     // alert(dataItem.cnId + dataItem.url);
		      var fullReq = dataItem.authUrl+"?formMode=auth&cnid="+dataItem.cnId;
		      //alert("full req="+fullReq);
		      window.location.replace(fullReq);
			}
		}
	});
	
	
	
	
});
</script>
<script>
//for menu serch box
//var data = getData();
	
$(document).ready(function() {
	
	function getData(shortcut)
	{
		var result;
		
		return result;
		
	}
	$("#searchmenu").click(function() { 
		 var shortcut =  $("#menu").val();
		 $.ajax({
			   url: 'mapshortcut?shortcut='+shortcut,
			   type: 'GET',
			   dataType: 'json',
			   async: false,
			   success: function(data) {
				   window.location.replace(data);
			   },
			   error: function(data) {
				  // alert("Please enter appropriate Menu Shortcut");
				   var popupContent = 'Please enter appropriate Menu Shortcut!';
		    	 	var dialog = $("#error-popup-window").data("kendoWindow");
		 			$("#msg1").html(popupContent);
		 	 		dialog.open();
		 	 		dialog.center(); 
				   $("#menu").val("");
			   }
		});		
		 
		 
	 });
});
//end of menu search box
</script>
</body>
</html>