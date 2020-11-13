<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">
 <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">

   	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
	  <meta name="description" content="Clean Slide Responsive Vcard Template" />
	  <meta name="keywords" content="jquery, Responsive Vcard, Template, Vcard, Clean Slide" />
	  <meta http-equiv="X-UA-Compatible" content="IE=9" />
	  <meta http-equiv="X-UA-Compatible" content="IE=7" />
	  <title>LISTS</title>
    
	
	  <!-- Loading Google Web fonts -->
	  <link href='http://fonts.googleapis.com/css?family=Open+Sans:400,600,700,800' rel='stylesheet' type='text/css' />
	  <link href='http://fonts.googleapis.com/css?family=Open+Sans+Condensed:300,700' rel='stylesheet' type='text/css' />
	  <link href='http://fonts.googleapis.com/css?family=IM+Fell+DW+Pica' rel='stylesheet' type='text/css' />
	  <link href='http://fonts.googleapis.com/css?family=Droid+Sans:400,700' rel='stylesheet' type='text/css' />
	
	<!-- CSS Files -->
  	<link href="assets/css/reset.css" rel="stylesheet" type="text/css" />
  	<link href="assets/css/style.css" rel="stylesheet" type="text/css"  id="color" />
	  <link href="assets/css/typography.css" rel="stylesheet" type="text/css"  id="customFont"/>
	  <link href="assets/css/arial_content.css" rel="stylesheet" type="text/css"  id="contentfont"/>
	  <link rel="stylesheet" type="text/css" href="extensions/filter-control/bootstrap-table-filter-control.css">
    <link href="https://unpkg.com/bootstrap-table@1.18.0/dist/bootstrap-table.min.css" rel="stylesheet">


    <link href="css/theme.blue.css" rel="stylesheet">

    <script src="js/jquery-latest.min.js"></script>
    <script src="js/jquery.tablesorter.js"></script>
    <!-- date range parsers -->
    <script src="js/parsers/parser-date-range.js"></script>
    <!-- filter widget & inside range type -->
    <script src="js/widgets/widget-filter.js"></script> 
    <script src="js/widgets/widget-filter-type-insideRange.js"></script>
    

	<!-- include jQuery library -->
	  <script type="text/javascript" src="assets/js/jquery-1.7.min.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
	  <script src="assets/js/raphael.js" type="text/javascript"></script>
	  <script src="assets/js/init.js" type="text/javascript"></script>
    <script src="extensions/filter-control/bootstrap-table-filter-control.js"></script>
    <script src="https://unpkg.com/bootstrap-table@1.18.0/dist/bootstrap-table.min.js"></script>
    <script src="https://unpkg.com/bootstrap-table@1.18.0/dist/extensions/filter-control/bootstrap-table-filter-control.min.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

  </head>
	


  <body>
  
   <div class="container">
     <div class="jumbotron">
      <div id="demo"> <h1 class="baslik" >Visitors</h1> </div>
      </div>
    </div>   
    <cfparam name="attributes.adi" default="">
    <cfobject name="visitormodel" type="component" component="calismalar.VisitorBook.models.ziyaretci">
    <cfset visitordata = visitormodel.getlist(attributes.adi)>
    <cfset empdata = visitormodel.getdep(attributes.adi)>

  <div class="container">
     <div class="row">
      <form id="search" role="form" style="border:0">
        <div class="col-md-3">
          <ul class="nav nav-stacked">
            <li><strong>From Date</strong></li>
            <li>
              <input type="text" class="form-control" value="2015-06-17" id="dateFrom" />
            </li>
          </ul>
        </div>

      <div class="col-md-3">
         <ul class="nav nav-stacked">
           <li><strong>To Date</strong></li>
           <li>
             <input type="text" class="form-control" value="2015-06-19" id="dateTo" />
           </li>
         </ul>
       </div>

      <div class="col-md-3">
         <ul class="nav nav-stacked">
           <li>&nbsp;</li>
           <li>
             <button class="btn btn-primary" type="button" id="getJsonSrc">Search</button>
           </li>
         </ul>
       </div>
     </form>
   </div>

  <p> <span>&nbsp;&nbsp;</span></p>

  <input id="myInput" type="text" placeholder="Search..">
 
  <br />
  <p> <span>&nbsp;&nbsp;</span></p>

    <!-- Row -->

    <div class="row">
      <div class="col-md-12">
        <table class="darkTable" id="dataTable" data-pagination="true" data-page-size="5" data-page-list="5, 10, All" data-search="true" data-search-align="left" data-striped="true" data-show-refresh="true" data-sort-name="date" data-sort-order="desc" data-search-text="Narrow results">
          <thead>
            <tr>
              <th>Id</th>
              <th>Adi</th>
              <th>Soyadi</th>
              <th>Kart_No</th>
              <th>Tarih</th>
              <th>Giris</th>
		          <th>cikisi</th>
		      	 <th>Ziyaret Nedeni</th>  
	      	   <th>Calisan Adi</th>          
	      	   <th >Calisan Soyadi</th>
             <th >Departman </th>
             <th >Update </th>
			      </tr>
         </thead>
		 
     <form  id="Form" name="Form"method="post" action="ziyaretci_list.cfm">
        <tbody  id="myTable">
         <cfoutput query="visitordata">
           <tr>
             <td>#visitordata.Id#</td>
             <td>#visitordata.adi#</td>
             <td>#visitordata.soyadi#</td>
 		         <td>#visitordata.kart_no#</td>
	           <td>#visitordata.tarih#</td>
             <td>#visitordata.giris#</td>
             <td>#visitordata.cikisi#</td>           
             <td>#visitordata.ziyaret_nedeni#</td>				
             <td>#visitordata.employee_name#</td> 
             <td>#visitordata.employee_surname#</td>
             <td>#empdata.departmant#</td>
             <td > <button  class="btn btn-light"><a href="ziyaretci_update.cfm" > Update </span></a></button></td>
            </tr>   		
        				  		      							 
          </cfoutput>
        </tbody>
      </form>
    </table>
        <p> <span>&nbsp;&nbsp;</span></p>
        <p> <span>&nbsp;&nbsp;</span></p>
        <p> <span>&nbsp;&nbsp;</span></p>
       
            
      </div>
    </div>
  </div>
 </body>
</html>

<script type="text/javascript">

    $(function() {
      $('#table').bootstrapTable()
    })


  $(document).ready(function(){
    $("#myInput").on("keyup", function() {
      var value = $(this).val().toLowerCase();
      $("#myTable tr").filter(function() {
        $(this).toggle($(this).text().toLowerCase().indexOf(value) > -1)
      });
    });
  });
  $("#getJsonSrc").click(function() {
    $("#dataTable thead").show();
    var $table = $("#dataTable"),
      $startDate = new Date($("#dateFrom").val()),
        $endDate = new Date($("#dateTo").val()),
      $jsonSrc = "https://s3-us-west-2.amazonaws.com/s.cdpn.io/77979/demo.json";

    var my_array;
    $.getJSON($jsonSrc).success(function(data) {
      my_array = [];

      for (var i = 0; i < data.length; i++) {
        var this_date = new Date(data[i].date);
        if ((this_date >= $startDate) && (this_date <= $endDate)) {
          my_array.push(data[i]);

        }
      }
      my_array = JSON.stringify(my_array);
      alert(my_array);
    });
    $table.bootstrapTable("load", my_array);
  });

 </script>

<style>
    .baslik{
      text-align:center;
    }

    body{
      background-color:pink;
  }
    table.darkTable {
    font-family: "Arial Black", Gadget, sans-serif;
    border: 2px solid #000000;
    background-color: #4A4A4A;
    width: 100%;
    height: 200px;
    text-align: center;
    border-collapse: collapse;
  }
  table.darkTable td, table.darkTable th {
    border: 1px solid #4A4A4A;
    padding: 3px 2px;
  }
  table.darkTable tbody td {
    font-size: 13px;
    color: #E6E6E6;
  }
  table.darkTable tr:nth-child(even) {
    background: #888888;
  }
  table.darkTable thead {
    background: #000000;
    border-bottom: 3px solid #000000;
  }
  table.darkTable thead th {
    font-size: 15px;
    font-weight: bold;
    color: #E6E6E6;
    text-align: center;
    border-left: 2px solid #4A4A4A;
  }
  table.darkTable thead th:first-child {
    border-left: none;
  }

  table.darkTable tfoot {
    font-size: 12px;
    font-weight: bold;
    color: #E6E6E6;
    background: #000000;
    background: -moz-linear-gradient(top, #404040 0%, #191919 66%, #000000 100%);
    background: -webkit-linear-gradient(top, #404040 0%, #191919 66%, #000000 100%);
    background: linear-gradient(to bottom, #404040 0%, #191919 66%, #000000 100%);
    border-top: 1px solid #4A4A4A;
  }
  table.darkTable tfoot td {
    font-size: 12px;
  }
  #demo {
  -webkit-box-shadow: 5px 5px 5px 0px #000000, inset 4px 4px 15px 0px #000000, 5px 5px 15px 5px rgba(255,245,254,0); 
    box-shadow: 5px 5px 5px 0px #000000, inset 4px 4px 15px 0px #000000, 5px 5px 15px 5px rgba(255,245,254,0);

  }

</style>