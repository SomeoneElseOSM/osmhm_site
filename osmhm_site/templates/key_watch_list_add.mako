<%inherit file="base.mako"/>
<%block name="header">
</%block>
<%block name="content">
<%
if data:
  key = data.key
  value = data.value
  reason = data.reason
  notify = data.email
  submit = 'Update'
else:
  key = ''
  value = ''
  reason = ''
  notify = ''
  submit = 'Submit'
%>
<form class="form-horizontal" method="POST">
	<fieldset>
		<legend>Add key/value to watch list:</legend>
		<div class="form-group">
			<label for="addkey" class="col-lg-4 control-label">Key</label>
			<div class="col-lg-6">
				<input type="text" class="form-control" id="addkey" name="addkey" placeholder="e.g. railway" value="${key}" required>
				<span class="help-block">Add a key to watch. Wildcards are accepted, though only either the key or the value can be a wildcard.
			</div>
		</div>
		<div class="form-group">
			<label for="addvalue" class="col-lg-4 control-label">Value</label>
			<div class="col-lg-6">
				<input type="text" class="form-control" id="addvalue" name="addvalue" placeholder="e.g. yes" value="${value}" required>
				<span class="help-block">Add a value to watch. Wildcards are accepted, though only either the key or the value can be a wildcard.
			</div>
		</div>
		<div class="form-group">
			<label for="addreason" class="col-lg-4 control-label">Reason:</label>
			<div class="col-lg-6">
				<input type="text" class="form-control" id="addreason" name="addreason" placeholder="e.g. Vandalised often" value="${reason}" required>
				<span class="help-block">Enter a note to yourself why this key was added.</span>
			</div>
		</div>
		<div class="form-group">
			<label for="addnotify" class="col-lg-4 control-label">Notification email:</label>
			<div class="col-lg-6">
				<input type="text" class="form-control" id="addnotify" name="addnotify" placeholder="Email address (optional)" value="${notify}">
				<span class="help-block">Add an optional notification email address.</span>
			</div>
		</div>
		<div class="form-group">
			<div class="col-lg-10 col-lg-offset-6">
				<button class="btn btn-primary" type="submit" value="submit">${submit}</button>
			</div>
		</div>
	</fieldset>
</form>
</%block>
