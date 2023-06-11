<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<c:import url="/Header"></c:import>
<script defer src="js/test.js"></script>

<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<div class="container ">
<form id="idForm" class="m-5" name="myform" >
  <div class="mb-3">
    <label for="exampleInputEmail1"  class="form-label">Champ</label>
    <input type="text" id="message"  class="form-control" name="message"  aria-describedby="emailHelp">
  </div>
</form>
 <button type="button" id="subs" class="btn btn-primary" onclick="return submitme()">Submit</button>

</div>
<br>
<br>
<br>
<div>
</div>
<div id="thisdiv">
<c:forEach items="${voiture }" var="element">
<div  >${element.marque}</div>
</c:forEach>
</div>
<div id="alert">
</div>
<c:import url="/Footer"></c:import>