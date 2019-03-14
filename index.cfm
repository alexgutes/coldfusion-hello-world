<cfinclude  template="header.cfm">

<cfquery name="myQuery" datasource="MyDataSource">
  SELECT *
  FROM users
</cfquery>

<cfset artistArray = [] />
<cfloop query="myQuery">
  <cfset arrayAppend(artistArray, myQuery.last_name & ', ' & myQuery.first_name) />
</cfloop>

<cfloop array="#artistArray#" item="item">
  <cfoutput>
    #item# <br/>
  </cfoutput>
</cfloop>



<cfinclude  template="footer.cfm">