<%@page import="java.util.Date"%>
<%@page import="com.amy.banking.util.AppConstants"%>
<%@taglib prefix="kendo" uri="http://www.kendoui.com/jsp/tags"%>

<div class="form-group">
	<label class="control-label col-sm-2">Acct ID</label>
	<div class="col-md-1">
		<input type="text" id="acctid" name="generalAccountId"
			<%if (request.getAttribute("accountId") != null) {%>
			value="<%out.print(request.getAttribute("accountId"));%>"
			<%} else {%> data-bind="value:acctname.acctId" <%}%>
			class="form-control" <%if(! request.getParameter("formMode").equals(AppConstants.FORM_MODE_NEW)) {%>readonly="readonly" <%} %>>
	</div>
	<div class="col-md-1">
		<input type="text" id="subacctid" name="generalSubAccountId"
			<%if (request.getAttribute("subAccountId") != null) {%>
			value="<%out.print(request.getAttribute("subAccountId"));%>"
			<%} else {%> data-bind="value:acctname.subAcctId" <%}%>
			class="form-control" <%if(! request.getAttribute("formMode").equals(AppConstants.FORM_MODE_NEW)) {%>readonly="readonly" <%} %>>
	</div>
	<label class="control-label col-md-6">Opening Date</label>
	<%if(request.getAttribute("formMode").equals(AppConstants.FORM_MODE_NEW)) { %>
	<div class="col-md-2">
		<kendo:datePicker id="openingdate" name="openingDate"
			format="<%=AppConstants.DEFAULT_DATE_FORMAT%>"></kendo:datePicker>
	</div>
	<%}
	else {
	%>
	<div class="col-md-2">
		<kendo:datePicker id="openingdate" name="openingDate"
			format="<%=AppConstants.DEFAULT_DATE_FORMAT%>" value="<%=new Date()%>" readonly="readonly"></kendo:datePicker>
	</div>
	<%} %>
</div>
<div class="form-group">
	<label class="control-label col-sm-2">Acct Name</label>
	<div class="col-md-6">
		<input type="text" id="accountname" name="accountName"
			<%if (request.getAttribute("accountName") != null) {%>
			value="<%out.print(request.getAttribute("accountName"));%>"
			<%} else {%> data-bind="value:acctname.accountName" <%}%>
			class="form-control" <%if(! request.getAttribute("formMode").equals(AppConstants.FORM_MODE_NEW)) {%>readonly="readonly" <%} %>>
	</div>
	<label class="control-label col-md-2">Closing Date</label>
	<%if(request.getParameter("formMode").equals(AppConstants.FORM_MODE_NEW)) { %>
	<div class="col-md-2">
		<kendo:datePicker id="closingdate" name="closingDate"
			format="dd-MM-yyyy"></kendo:datePicker>
	</div>
	<%}
	else {
	%>
		<div class="col-md-2">
		<kendo:datePicker id="closingdate" name="closingDate"
			format="dd-MM-yyyy"></kendo:datePicker>
		</div>
	<%} %>
</div>
<div class="form-group">
	<div class="col-md-8"></div>
	<label class="control-label col-sm-2">A/c Status</label>
	<div class="col-md-2">
		<input type="text" id="accstatus" name="accountStatus"
			class="form-control" <%if(! request.getParameter("formMode").equals(AppConstants.FORM_MODE_NEW)) {%>readonly="readonly" <%} %>>
	</div>
</div>