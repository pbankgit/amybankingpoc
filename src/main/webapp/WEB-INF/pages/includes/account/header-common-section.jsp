<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="com.amy.banking.util.AppConstants"%>
<div id="common-section" class="form-horizontal">

	<div class="form-group">
		<label class="control-label col-sm-2">Branch ID</label>
		<div class="col-md-1">
			<input type="text" id="branchid" name="branchid" class="form-control"
				value="<%=AppConstants.DEFAULT_BRANCH_ID%>" readonly="readonly">
		</div>
		<div class="col-md-3">
			<input type="text" id="branchname" name="branchName"
				class="form-control" value="<%=AppConstants.DEFAULT_BRANCH_NAME%>"
				readonly="readonly">
		</div>
		<label class="control-label col-sm-1">Cust ID</label>
		<div class="col-md-1">
			<input type="text" id="custid" name="custId"
				<%if (request.getAttribute("custId") != null) {%>
				value="<%out.print(request.getAttribute("custId"));%>"
				<%} else {%> data-bind="value:acct.custId" <%}%>
				class="form-control" readonly="readonly">
		</div>
		<div class="col-md-3">
			<input type="text" id="customername" name="customerName" class="form-control" readonly="readonly">
		</div>
	</div>

	<div class="form-group">
		<label class="control-label col-sm-2">GL ID</label>
		<div class="col-md-1">
			<input type="text" id="glid" name="glId"
				<%if (request.getAttribute("glId") != null) {%>
				value="<%out.print(request.getAttribute("glId"));%>" <%}%>
				class="form-control" readonly="readonly">
		</div>
		<div class="col-md-3">
			<input type="text" id="glname" name="glName" class="form-control" readonly="readonly">
		</div>
	</div>

</div>
<div class="clearfix"></div>