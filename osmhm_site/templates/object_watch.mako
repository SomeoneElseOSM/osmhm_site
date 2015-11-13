<%inherit file="base.mako"/>
<%block name="header">
</%block>
<%block name="content">
<h1 class="page-header">Object Watch List</h1>
% if history:
<table class="table table-condensed">
<tr><th>Time</th><th>Changeset</th><th>Username</th><th>Action</th><th>Object ID</th><th>Delete Event</th></tr>
% for event in history:
	<tr><td>${event.timestamp}</td>
    <td><a href="http://www.osm.org/changeset/${event.changeset}" target="_blank">${event.changeset}</a></td>
    <td><a href="http://www.osm.org/user/${event.username}" target="_blank">${event.username}</a></td>
    <td>${event.action}</td>
    <td>${event.element}</td>
    <td><a href="${request.route_path('object_watch_event_delete',id=event.id)}"><i class="glyphicon glyphicon-remove" style="color: red;"></i></a></td></tr>
% endfor
</table>
% else:
No events registered for objects in the object watch list.
% endif
</%block>
