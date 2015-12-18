<%@ page import="com.amy.banking.util.AppConstants" %>
<div class="form-group">
		<label class="control-label col-sm-1" for="branchid">Branch ID</label>
		<div class="col-md-1">
			<input type="text" class="form-control" name="branchid" id="branchid" readonly="readonly" value="<%=AppConstants.DEFAULT_BRANCH_ID %>">
		</div>
		<div class="col-md-3">
			<input type="text" class="form-control" name="branchname" id ="branchname" readonly="readonly" value="<%= AppConstants.DEFAULT_BRANCH_NAME %>">
		</div>
</div>