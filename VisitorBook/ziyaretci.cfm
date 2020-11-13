<!DOCTYPE html>
<html lang="en">
<head>
  <title>Visitor Book</title>
   <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</head>
<body>

<div class="container">
  <div class="jumbotron">
    <div id="demo"> <h1 class="baslik">Visitor Add</h1> </div>
   <button class="btn btn-light"><a href="ziyaretci.cfm">Add</a></button>
   <button  class="btn btn-light"><a href="ziyaretci_list.cfm">Visitors</a></button>
 
  
  </div>
  </div>
 
<form  name="form" class="form-horizontal" method="post" action="insert.cfm">
  
  <div class="form-group">
    <label class="control-label col-sm-2" for="adi">Name:</label>
    <div class="col-sm-10">
      <input name="adi"type="text" class="form-control" id="adi" placeholder="Enter Name">
    </div>
  </div>
  <div class="form-group">
    <label class="control-label col-sm-2" for="soyadi">Surname:</label>
    <div class="col-sm-10">
      <input name="soyadi" type="text" class="form-control" id="soyadi" placeholder="Enter SurName">
    </div>
  </div>
  <div class="form-group">
    <label class="control-label col-sm-2" for="kart_no"> Card Number:</label>
    <div class="col-sm-10">
      <input name="kart_no" type="text" class="form-control" id="kart_no" placeholder="Enter Card Number">
    </div>
  </div>
<div class="form-group row">
  <label class="control-label col-sm-2" for="tarih">Date</label>
  <div class="col-sm-10">
    <input name="tarih" class="form-control" type="date" value="2011-08-19" id="tarih">
  </div>
</div>

 <div class="form-group row">
    <label class="control-label col-sm-2" for="giris"> Check in time:</label>
    <div class="col-sm-10">
      <input name="giris" class="form-control" type="time" value="13:45:00" id="giris">
    </div>
  </div>
 </div> 

 <div class="form-group row">
    <label class="control-label col-sm-2" for="cikisi"> Check Out time:</label>
    <div class="col-sm-10">
      <input name="cikisi" class="form-control" type="time" value="13:45:00" id="cikisi">
    </div>
  </div>
 </div> 
 <div class="form-group row">
    <label class="control-label col-sm-2" for="ziyaret_nedeni">Reason For Visit:</label>
    <div class="col-sm-10">
      <input name="ziyaret_nedeni" type="text" class="form-control" id="ziyaret_nedeni" >
    </div>
  </div>

  <div class="form-group"> 
    <label class="control-label col-sm-2" for="employee_id"> Employee Id:</label>
    <div class="col-sm-10">
      <select  name="employee_id" class="form-control" id="exampleFormControlSelect1">
      <option>1</option>
      <option>2</option>
     </select>
     </div>

  </div>
 
  
 <div class="form-group"> 
    <label class="control-label col-sm-2" for="employee_name"> Employee Name:</label>
    <div class="col-sm-10">
      <input name="employee_name" type="text" class="form-control" id="employee_name" placeholder="Enter Employee Name">
    </div>
  </div>
<div class="form-group"> 
    <label class="control-label col-sm-2" for="employee_name"> Employee SurName:</label>
    <div class="col-sm-10">
      <input name="employee_surname" type="text" class="form-control" id="employee_surname" placeholder="Enter Employee SurName">
    </div>
  </div>






 <div class="form-group">
    <div class="col-sm-offset-2 col-sm-10">
       <button type="submit" class="btn btn-primary">Submit</button>
    </div>
 </div>
     
  
     
 



</form>

</body>

</html>

<style>

.baslik{
    text-align:center;
}
.form-horizontal{
   margin-left: 30%;
   margin-right: 30%;
   
    width: 45%;

}
body{
    background-color:pink;
}
#demo {
-webkit-box-shadow: 5px 5px 5px 0px #000000, inset 4px 4px 15px 0px #000000, 5px 5px 15px 5px rgba(255,245,254,0); 
box-shadow: 5px 5px 5px 0px #000000, inset 4px 4px 15px 0px #000000, 5px 5px 15px 5px rgba(255,245,254,0);
}
</style>
