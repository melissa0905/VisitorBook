 
<cfcomponent accessors="true">

    <cffunction name="getlist" access="public">
        <cfargument name="Id" default="">
        <cfargument name="adi" default="">
        <cfargument name="soyadi" default="">
        <cfargument name="kart_no" default="">
        <cfargument name="tarih" default="">
        <cfargument name="giris" default="">
        <cfargument name="cikisi" default="">
        <cfargument name="ziyaret_nedeni" default="">
        <cfargument name="employee_id" default="">
        <cfargument name="emp_id" default="">
        <cfargument name="employee_name" default="">

        <cfquery name="joinvisitemp" datasource="workCubeDSN">
           SELECT  visitor.*, employee.*
            FROM    employee LEFT JOIN visitor 
            ON visitor.employee_id = employee.emp_id

        </cfquery>
      <cfreturn joinvisitemp>
    </cffunction>

     <cffunction name="getdep" access="public">
        <cfargument name="emp_id" defult="">
        <cfargument name="dep_id" defult="">
        <cfargument name="departmant_id" defult="">

        <cfquery name="joinempdep" datasource="workCubeDSN">
            SELECT  employee.*, departmant.departmant
            FROM    departmant LEFT JOIN employee 
            ON employee.departmant_id =departmant.dep_id
        </cfquery>

        <cfreturn joinempdep>
     </cffunction>

    <cffunction name="getadd" access="public">
       
        <cfargument name="adi" default="">
        <cfargument name="soyadi" default="">
        <cfargument name="kart_no" default="">
        <cfargument name="tarih" default="">
        <cfargument name="giris" default="">
        <cfargument name="cikisi" default="">
        <cfargument name="ziyaret_nedeni" default="">
        <cfargument name="employee_id" default="">
        <cfargument name="employee_name" default="">

        <cfquery name="query_add" datasource="workCubeDSN">
            INSERT INTO visitor(adi,soyadi,kart_no,tarih,giris,cikisi,ziyaret_nedeni,employee_id,employee_name)
            VALUES
           (   
               <cfqueryparam cfsqltype='CF_SQL_NVARCHAR' value='#arguments.adi#'>,
               <cfqueryparam cfsqltype='CF_SQL_NVARCHAR' value='#arguments.soyadi#'>,
               <cfqueryparam cfsqltype='CF_SQL_INTEGER' value='#arguments.kart_no#'>,
               <cfqueryparam cfsqltype='CF_SQL_DATE' value='#arguments.tarih#'>,
               <cfqueryparam cfsqltype='CF_SQL_TIME' value='#arguments.giris#'>,
               <cfqueryparam cfsqltype='CF_SQL_TIME' value='#arguments.cikisi#'>,
               <cfqueryparam cfsqltype='CF_SQL_NVARCHAR' value='#arguments.ziyaret_nedeni#'>,
               <cfqueryparam cfsqltype='CF_SQL_INTEGER' value='#arguments.employee_id#'>,
               <cfqueryparam cfsqltype='CF_SQL_NVARCHAR' value='#arguments.employee_name#'>
           
           
           )   
        </cfquery>

    </cffunction>

    <cffunction name="upd">
    
        <cfargument name="Id" >
        <cfargument name="adi" >
        <cfargument name="soyadi" >
        <cfargument name="kart_no" >
        <cfargument name="tarih">
        <cfargument name="giris">
        <cfargument name="cikisi" >
        <cfargument name="ziyaret_nedeni">
        <cfargument name="employee_id" >
        <cfargument name="employee_name" >

        <cftry>
        <cfquery name="query_upd" datasource="workCubeDSN">
            UPDATE visitor SET 
              adi = <cfqueryparam cfsqltype='CF_SQL_NVARCHAR' value='#arguments.adi#'>,
              soyadi = <cfqueryparam cfsqltype='CF_SQL_NVARCHAR' value='#arguments.soyadi#'>,
              kart_no = <cfqueryparam cfsqltype='CF_SQL_INTEGER' value='#arguments.kart_no#'>,
               tarih = <cfqueryparam cfsqltype='CF_SQL_DATE' value='#arguments.tarih#'>,
               giris = <cfqueryparam cfsqltype='CF_SQL_TIME' value='#arguments.giris#'>,
               cikisi = <cfqueryparam cfsqltype='CF_SQL_TIME' value='#arguments.cikisi#'>,
               ziyaret_nedeni = <cfqueryparam cfsqltype='CF_SQL_NVARCHAR' value='#arguments.ziyaret_nedeni#'>,
               employee_id=<cfqueryparam cfsqltype='CF_SQL_INTEGER' value='#arguments.employee_id#'>,
               employee_name=<cfqueryparam cfsqltype='CF_SQL_NVARCHAR' value='#arguments.employee_name#'>
            WHERE Id = <cfqueryparam cfsqltype='CF_SQL_INTEGER' value='#arguments.Id#'>
        </cfquery>
        <cfreturn { durum: 1 }>
        <cfcatch>
        <cfreturn {durum: 0, hata: cfcatch}>
        </cfcatch>
        </cftry>
    </cffunction>
        
     <cffunction name="delete" access="public">
        <cfargument name="Id">
       <cfquery name="query_delete" datasource="workCubeDSN">

            DELETE FROM visitor
            WHERE Id = <cfqueryparam cfsqltype='CF_SQL_INTEGER' value='#arguments.Id#'>
        </cfquery>

    
</cffunction>

</cfcomponent>