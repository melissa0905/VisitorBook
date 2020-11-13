<cfscript>
	if(attributes.tabMenuController eq 0)
	{
		WOStruct = StructNew();
		
		WOStruct['#attributes.fuseaction#'] = structNew();	
		
		WOStruct['#attributes.fuseaction#']['default'] = 'list';
		if(not isdefined('attributes.event'))
			attributes.event = WOStruct['#attributes.fuseaction#']['default'];
	
		WOStruct['#attributes.fuseaction#']['list'] = structNew();
		WOStruct['#attributes.fuseaction#']['list']['window'] = 'normal';
		WOStruct['#attributes.fuseaction#']['list']['fuseaction'] = 'sales.visitors';
		WOStruct['#attributes.fuseaction#']['list']['addButton'] = 'sales.visitors&event=add';
		WOStruct['#attributes.fuseaction#']['list']['filePath'] = '/calismalar/VisitorBook/listeleme.cfm';
		WOStruct['#attributes.fuseaction#']['list']['addButton'] = 1;
		WOStruct['#attributes.fuseaction#']['add'] = structNew();
		WOStruct['#attributes.fuseaction#']['add']['window'] = 'normal';
		WOStruct['#attributes.fuseaction#']['add']['fuseaction'] = 'sales.visitors&event=add';
		WOStruct['#attributes.fuseaction#']['add']['filePath'] = '/calismalar/VisitorBook/<iyaretci.cfm';
		WOStruct['#attributes.fuseaction#']['add']['queryPath'] = '/calismalar/VisitorBook/insert.cfm';
		WOStruct['#attributes.fuseaction#']['add']['nextEvent'] = WOStruct['#attributes.fuseaction#']['default'];
	
		
	}
	
</cfscript>
<cfscript>
	if(attributes.tabMenuController eq 0)
	{
		WOStruct = StructNew();
		
		WOStruct['#attributes.fuseaction#'] = structNew();	
		
		WOStruct['#attributes.fuseaction#']['default'] = 'list';
		if(not isdefined('attributes.event'))
			attributes.event = WOStruct['#attributes.fuseaction#']['default'];
	
		WOStruct['#attributes.fuseaction#']['list'] = structNew();
		WOStruct['#attributes.fuseaction#']['list']['window'] = 'normal';
		WOStruct['#attributes.fuseaction#']['list']['fuseaction'] = 'sales.times';
		WOStruct['#attributes.fuseaction#']['list']['addButton'] = 'sales.times&event=add';
		WOStruct['#attributes.fuseaction#']['list']['filePath'] = '/calismalar/Time/list.cfm';
		WOStruct['#attributes.fuseaction#']['list']['addButton'] = 1;
		WOStruct['#attributes.fuseaction#']['add'] = structNew();
		WOStruct['#attributes.fuseaction#']['add']['window'] = 'normal';
		WOStruct['#attributes.fuseaction#']['add']['fuseaction'] = 'sales.times&event=add';
		WOStruct['#attributes.fuseaction#']['add']['filePath'] = '/calismalar/Time/time.cfm';
		WOStruct['#attributes.fuseaction#']['add']['queryPath'] = '/calismalar/Time/insert.cfm';
		WOStruct['#attributes.fuseaction#']['add']['nextEvent'] = WOStruct['#attributes.fuseaction#']['default'];
	
		
	}
	
</cfscript>
