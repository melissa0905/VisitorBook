<cfobject name="visitordata" type="component" component="calismalar.VisitorBook.models.ziyaretci">
<cfset result = visitordata.delete(form.Id)>
<script type="text/javascript">
    document.location = 'ziyaretci_update.cfm';
</script>