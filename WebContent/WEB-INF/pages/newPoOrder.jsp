<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html >
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>My ERP | Purchase Order</title>
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/admin/plugins/datatables/dataTables.bootstrap.css">

<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/admin/bootstrap/css/bootstrap.min.css">
<!-- Font Awesome -->
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.5.0/css/font-awesome.min.css">
<!-- Ionicons -->
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/ionicons/2.0.1/css/ionicons.min.css">
<!-- Theme style -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/admin/dist/css/AdminLTE.min.css">
<!-- AdminLTE Skins. Choose a skin from the css/skins
       folder instead of downloading all of them to reduce the load. -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/admin/dist/css/skins/_all-skins.min.css">
<!-- iCheck -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/admin/plugins/iCheck/flat/blue.css">
<!-- Morris chart -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/admin/plugins/morris/morris.css">
<!-- jvectormap -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/admin/plugins/jvectormap/jquery-jvectormap-1.2.2.css">
<!-- Date Picker -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/admin/plugins/datepicker/datepicker3.css">
<!-- Daterange picker -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/admin/plugins/daterangepicker/daterangepicker.css">
<!-- bootstrap wysihtml5 - text editor -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/admin/plugins/bootstrap-wysihtml5/bootstrap3-wysihtml5.min.css">
<!-- toggle -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/admin/css/toggleswitch.css">
<script>
function myFunction() {
	 var id = document.getElementById("myCheck").value;     
	    if(id == 'A'){
	    	document.getElementById("myCheck").value = "I";
	        var y = document.getElementById("myCheck").value;
	    }else {
	    	document.getElementById("myCheck").value = "A";
	        var y = document.getElementById("myCheck").value;
	    }
  }
  
function deleteConform(projectName){
	var decision=confirm("Project '"+projectName+"'  may contains multiple wings\nDo you want to Delete?");
	 if(decision){
	    	return true;
	    }
	    else{
	    	return false;	
	    }
}
</script>
<style>
div.panel-body {
	box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0
		rgba(0, 0, 0, 0.19);
}
</style>

</head>
<body class="hold-transition skin-blue sidebar-mini">
	<div class="wrapper">
		<jsp:include page="../admin/header.jsp"></jsp:include>
		<jsp:include page="../admin/sidebar.jsp"></jsp:include>

		<div class="content-wrapper">

			<c:if test="${not empty successMessage}">
				<div class="alert alert-success alert-dismissable fade in"
					id="success-alert">
					<a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
					<strong>Success!</strong> ${successMessage}
				</div>
			</c:if>
			<c:if test="${not empty errorMessage}">
				<div class="alert alert-danger alert-dismissable fade in"
					id="success-alert">
					<a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
					<strong>Error!</strong> ${errorMessage}
				</div>
			</c:if>

			<div class="col-md-1"></div>
			<div class="col-md-10">
				<div>
					<form:form action="" method="post"
						commandName="purchaseOrderDetails">


						<div class="panel panel-default fade out" id="addProjectFormId">
							<h3 align="center">Purchase Order</h3>
							<div class="panel-body">



								<div class="form-group">



									<div class="col-md-10">
										<h3>Purchase Order Headers</h3>

									</div>


								</div>

								<div class="form-group">

									<div class="col-md-5">
										<label>Document No</label>

										<form:input path="documentNO" class="form-control"
											placeholder="Document No ..." title="Enter alphanumeric only"
											required="required" name="ProjectName" />
									</div>

									<div class="col-md-5">
										<label>Ref Document No</label>
										<form:input path="" class="form-control"
											placeholder="Ref Document No ..." title="Enter alphanumeric only"
											required="required" name="ProjectName" />
									</div>

								</div>


								<div class="form-group">

									<div class="col-md-5">
										<label>Document Date</label>
										<form:input path="" class="form-control"
											placeholder="Document Date..." title="Enter alphanumeric only"
											required="required" name="" />
									</div>

									<div class="col-md-5">
										<label>Ref Document Date</label>
										<form:input path="" class="form-control"
											placeholder="Ref Document Date..." title="Enter alphanumeric only"
											required="required" name="" />
									</div>
								</div>


								<div class="form-group">

									<div class="col-md-8">
										<label>Vender </label>
										<form:select path="" class="form-control"
											placeholder="Vender ..." title="Enter alphanumeric only"
											required="required" name="">
											<form:option value=""></form:option>
										</form:select>


									</div>


								</div>


								<div class="form-group">

									<div class="col-md-8">
										<label>Notes </label>
										<form:textarea path="" class="form-control"
											placeholder="Notes ..." title="Enter alphanumeric only"
											required="required" />
									</div>


								</div>

								<div class="form-group">

									<div class="col-md-10">
										<label><h3>Purchase Order Details</h3></label>

									</div>


								</div>


								<div class="form-group">

									<div class="col-md-4">
										<label>Material </label>
										<form:select path="" class="form-control"
											placeholder="Material ..." title="Enter alphanumeric only"
											required="required" name="ProjectName">
											<form:option value=""></form:option>
										</form:select>


									</div>

									<div class="col-md-4">
										<label>Quantity </label>
										<form:select path="" class="form-control"
											placeholder="Quantity..." title="Enter alphanumeric only"
											required="required" name="ProjectName">
											<form:option value=""></form:option>
										</form:select>


									</div>

									<div class="col-md-4">
										<label>Rate </label>
										<form:select path="" class="form-control"
											placeholder="Rate ..." title="Enter alphanumeric only"
											required="required" name="ProjectName">
											<form:option value=""></form:option>
										</form:select>


									</div>


								</div>
								<div class="form-group">

									<div class="col-md-4"></div>

									<div class="col-md-4"></div>

									<div class="col-md-4">
										<label>EXP Delivery Date </label>
										<form:input path="" class="form-control"
											placeholder="EXP Delivery Date..." title="Enter alphanumeric only"
											required="required" name="ProjectName" />


									</div>


								</div>


								<div class="form-group">

									<div class="col-md-8">
										<label>Notes </label>
										<form:textarea path="" class="form-control"
											placeholder="Notes .." title="Enter alphanumeric only"
											required="required" />



									</div>


								</div>






							</div>




							<div align="right" class="panel-footer">
								<button type="submit" class="btn bg-blue margin">Insert</button>
								<button type="reset" class="btn bg-blue margin">Update</button>
								<button type="reset" class="btn bg-blue margin">Remove</button>
							</div>
						</div>

					</form:form>
				</div>
			</div>
			<div class="col-md-1"></div>

			<div>
				<div class="box-body">
					<div>
						<hr>
						<c:choose>
							<c:when
								test="${!empty ProjectMasterDtoResponse.projectMasterList}">
								<table id="example1"
									class="table table-responsive table-bordered table-hover"
									style="background-color: white;">
									<thead>
										<tr>
											<th>Material Code</th>
											<th>Short Text</th>
											<th>Quantity</th>
											<th>UOM</th>
											<th>Rate</th>
											<th>Amount</th>
											<th>Exp. Delivery Date</th>
											<th>Notes</th>

										</tr>
									</thead>
									<tbody>

										<c:forEach
											items="${ProjectMasterDtoResponse.projectMasterList}"
											var="projectList">
											<tr>
												<td>${projectList.projectName}</td>
												<td><c:choose>
														<c:when test="${projectList.projectIsActive eq 'I'}">
															<label class="switch"> <input type="checkbox"
																onchange="updateActiveStatus(${projectList.projectId},'${projectList.projectName}','A')">
																<span class="slider round"></span>
															</label>
														</c:when>
														<c:otherwise>
															<label class="switch"> <input type="checkbox"
																onchange="updateActiveStatus(${projectList.projectId},'${projectList.projectName}','I')"
																checked> <span class="slider round"></span>
															</label>
														</c:otherwise>
													</c:choose></td>

												<td><a
													href="/BuildingManagement/getProjectInformationById/${projectList.projectId}">
														<span class="glyphicon glyphicon-pencil"></span>
												</a></td>

												<td><a
													href="/BuildingManagement/deleteProjectMasterDetailsById/${projectList.projectId}">
														<span class="glyphicon glyphicon-trash"
														onclick="return deleteConform('${projectList.projectName}')"></span>
												</a></td>
											</tr>
										</c:forEach>


									</tbody>
								</table>
							</c:when>
							<c:otherwise>
								<table id="example1"
									class="table table-responsive table-bordered table-hover"
									style="background-color: white;">
									<thead>
										<tr>
											<th>Material Code</th>
											<th>Short Text</th>
											<th>Quantity</th>
											<th>UOM</th>
											<th>Rate</th>
											<th>Amount</th>
											<th>Exp. Delivery Date</th>
											<th>Notes</th>

										</tr>
									</thead>
									<tbody>
									</tbody>
								</table>
							</c:otherwise>
						</c:choose>
						<div align="right">
							<button type="submit" class="btn bg-blue margin">Submit</button>
							<button type="reset" class="btn bg-blue margin">Cancel</button>
						</div>

					</div>
					<!-- /.box-body -->
				</div>

			</div>
		</div>

		<jsp:include page="../admin/footer.jsp"></jsp:include>
		<script
			src="${pageContext.request.contextPath}/resources/admin/plugins/jQuery/jquery-2.2.3.min.js"></script>
		<!-- Bootstrap 3.3.6 -->
		<script
			src="${pageContext.request.contextPath}/resources/admin/bootstrap/js/bootstrap.min.js"></script>
		<!-- DataTables -->
		<script
			src="${pageContext.request.contextPath}/resources/admin/plugins/datatables/jquery.dataTables.min.js"></script>
		<script
			src="${pageContext.request.contextPath}/resources/admin/plugins/datatables/dataTables.bootstrap.min.js"></script>
		<!-- SlimScroll -->
		<script
			src="${pageContext.request.contextPath}/resources/admin/plugins/slimScroll/jquery.slimscroll.min.js"></script>
		<!-- FastClick -->
		<script
			src="${pageContext.request.contextPath}/resources/admin/plugins/fastclick/fastclick.js"></script>
		<!-- AdminLTE App -->
		<script
			src="${pageContext.request.contextPath}/resources/admin/dist/js/app.min.js"></script>
		<!-- AdminLTE for demo purposes -->
		<script
			src="${pageContext.request.contextPath}/resources/admin/dist/js/demo.js"></script>
		<!-- page script -->
		<script>
			$(function() {
				$("#example1").DataTable();
				$('#example2').DataTable({
					"paging" : true,
					"lengthChange" : false,
					"searching" : false,
					"ordering" : true,
					"info" : true,
					"autoWidth" : false
				});
			});
		</script>


		<script>
			function updateActiveStatus(id,name,status) {
				var data = {"projectId":id,"projectName":name, "projectIsActive": status} 
				
				 $.ajax({
					type : "POST",
					url : "/BuildingManagement/editCategoryMasterStatus",
					datatype : "application/json",
					contentType: "application/json; charset=utf-8",
					data : JSON.stringify(data),
					timeout : 100000,
					success : function(data) {
						//alert("success");
					},
					error : function(e) {
						//alert("error");
					},
					done : function(e) {
						console.log("DONE");
					}
				});
			    
			};
			</script>
		<script>
			$("#success-alert").fadeTo(2000, 500).slideUp(500, function(){
		    	$("#success-alert").slideUp(500);
			});
		</script>
		<script>
			$("#addProjectFormId").fadeTo(200000, 50000).slideDown(50000, function(){
		    	$("#addProjectFormId").slideDown(50000);
			});
		</script>

	</div>
</body>
</html>