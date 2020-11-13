<cfobject name="visitordata" type="component" component="calismalar.VisitorBook.models.ziyaretci">
<cfset result = visitordata.upd(form.Id, form.adi, form.soyadi, form.kart_no, form.tarih, form.giris, form.cikisi, form.ziyaret_nedeni, form.employee_id, form.employee_name )>
<cfif result.durum>

<script type="text/javascript">
    document.location = 'ziyaretci_list.cfm';
</script>


<cfelse>
    <cfdump var="#result.hata.detail#">
</cfif>