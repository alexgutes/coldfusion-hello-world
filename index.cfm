<cfinclude  template="header.cfm">

<cfquery name="myQuery" datasource="MyDataSource">
  SELECT *
  FROM users
</cfquery>
<cfdump  var="#myQuery#" />

<cfinclude  template="footer.cfm">