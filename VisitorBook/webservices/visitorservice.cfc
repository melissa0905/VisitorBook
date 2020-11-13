<cfcomponent rest="true" restpath="visitorservice">

    <cffunction name="getlist" access="remote" returnType="string" httpmethod="GET" restpath="getlist" produces="application/json">
        <cfargument name="Id" type="integer" restargsource="Form">
        <cfargument name="adi" type="string" restargsource="Form">
        <cfargument name="soyadi" type="string" restargsource="Form">
        <cfargument name="kart_no" type="integer" restargsource="Form">
        <cfargument name="tarih" type="date" restargsource="Form">
        <cfargument name="giris" type="time" restargsource="Form">
        <cfargument name="cikisi" type="time" restargsource="Form">
        <cfargument name="ziyaret_nedeni" type="string" restargsource="Form">
        <cfargument name="employee_id" type="integer" restargsource="Form">

        <cfobject name="visitormodel" type="component" component="calismalar.VisitorBook.models.ziyaretci">
        <cfset visitorlist = visitormodel.getlist()>
        <cfset result = arrayNew(1)>
        <cfloop from="1" to="#visitorlist.recordcount#" index="i">
            <cfset arrayAppend(result, queryGetRow(visitorlist, i) )>
        </cfloop>

        <cfreturn replace(serializeJSON(result), "//", "")>

    </cffunction>

    <cffunction name="add" access="remote" returnType="string" httpmethod="POST" restpath="add" produces="application/json">
        <cfargument name="Id" type="integer" restargsource="Form">
        <cfargument name="adi" type="string" restargsource="Form">
        <cfargument name="soyadi" type="string" restargsource="Form">
        <cfargument name="kart_no" type="integer" restargsource="Form">
        <cfargument name="tarih" type="date" restargsource="Form">
        <cfargument name="giris" type="time" restargsource="Form">
        <cfargument name="cikisi" type="time" restargsource="Form">
        <cfargument name="ziyaret_nedeni" type="string" restargsource="Form">
        <cfargument name="employee_id" type="integer" restargsource="Form">
        <cfargument name="employee_name" type="string" restargsource="Form">

        <cfobject name="visitormodel" type="component" component="calismalar.VisitorBook.models.ziyaretci">
        <cfset visitormodel.add(argumentCollection = arguments)>

        <cfreturn "tamam">
        
    </cffunction>

</cfcomponent>