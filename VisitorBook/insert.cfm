<cfobject name="visitordata" type="component" component="calismalar.VisitorBook.models.ziyaretci">
<cfset visitordata.getadd( form.adi, form.soyadi, form.kart_no, form.tarih, form.giris, form.cikisi, form.ziyaret_nedeni, form.employee_id, form.employee_name)>

<script type="text/javascript">
    document.location = 'ziyaretci_update.cfm';
</script>