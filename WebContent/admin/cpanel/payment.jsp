
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>CAMBRIGHT | Student Promote Class</title>

<!-- BEGIN META -->
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<!-- END META -->

<!-- BEGIN MAIN CSS -->
<link
	href='http://fonts.googleapis.com/css?family=Roboto:300italic,400italic,300,400,500,700,900'
	rel='stylesheet' type='text/css' />
<link type="text/css" rel="stylesheet"
	href="${pageContext.servletContext.contextPath }/assets/css/theme-default/bootstrap.css" />
<link type="text/css" rel="stylesheet"
	href="${pageContext.servletContext.contextPath }/assets/css/theme-default/materialadmin.css" />
<link type="text/css" rel="stylesheet"
	href="${pageContext.servletContext.contextPath }/assets/css/theme-default/font-awesome.min.css" />
<link type="text/css" rel="stylesheet"
	href="${pageContext.servletContext.contextPath }/assets/css/theme-default/material-design-iconic-font.min.css" />
<!-- END MAIN CSS -->

<link type="text/css" rel="stylesheet"
	href="${pageContext.servletContext.contextPath }/assets/dist/alertify.css" />
<link type="text/css" rel="stylesheet"
	href="${pageContext.servletContext.contextPath }/assets/dist/sweetalert2.css" />
<link type="text/css" rel="stylesheet"
	href="${pageContext.servletContext.contextPath }/assets/css/theme-default/libs/select2/select2.css" />
</head>
<body class="menubar-hoverable header-fixed ">

	<jsp:include
		page="${pageContext.servletContext.contextPath }/../mastertop/header.jsp"></jsp:include>

	<!-- BEGIN BASE-->
	<div id="base">
		<!-- BEGIN CONTENT-->
		<div id="content">
			<section>
				<div class="section-body">
					<div class="section-header">
						<ol class="breadcrumb">
							<li class="active">STUDENT PAYMENT MANAGMENT</li>
						</ol>
					</div>

					<div class="row">
						<div class="col-md-12">
							<div class="card card-outlined style-info">
								<div class="card-head card-head-sm style-info">
									<header>STUDENT PAYMENT</header>
									<div class="tools">
										<div class="btn-group">
											<a class="btn btn-icon-toggle btn-collapse"><i
												class="fa fa-angle-down"></i></a>
											<a class="btn btn-icon-toggle btn-refresh"><i class="md md-refresh"></i></a>
										</div>
									</div>
								</div>
								<!--end .card-head -->
								<div class="card-body" style="display: none;">
									<form class="form floating-label" role="form" id="fm-pay">
										<div class="row">
											<div class="col-md-6">
												<div class="form-group floating-label">
													<select name="branch" id="branch-list" class="form-control"
														required>

													</select> <label for="branch">BRANCH</label>
												</div>

											</div>
											<div class="col-md-6">
												<div class="form-group floating-label">
													<select class='form-control select2-list' id='select-student' placeholder="SELECT STUDENT" required>
													
													</select>
												</div>
											</div>
										</div>
										<div class="row">
											<div class="col-md-6">
												<div class="form-group floating-label">
													<select class='form-control select2-list' id='select-subprog' placeholder="SELECT SUB-PROGRAM" required>
													
													</select>
												</div>
											</div>
											<div class="col-md-6">
												<div class="form-group floating-label">
													<select class='form-control select2-list' id='select-class' placeholder="SELECT CLASS" required>
													
													</select>
												</div>
											</div>
										</div>
										
										<div class="row">
											<div class="col-md-6">
												<div class="form-group floating-label">
													<select class='form-control' id='select-feetype' required>
														<option value="term_fee">1 TERM</option>
														<option value="sem_fee">1 SEMESTER</option>
													</select>
												</div>
											</div>
											<div class="col-md-6">
												<div class="form-group floating-label">
													<input type="number" class="form-control" id="discount" max="100" min="0" value="0"
														required> <label for="discount">DIS%</label>
												</div>
											</div>
										</div>
										
										<div class="row">
											<div class="col-md-12">
												<div class="form-group floating-label">
													<input type="text" class="form-control" id="total" readonly required>
													<label for="">TOTAL</label>
												</div>
											</div>
										</div>
										<div class="form-footer">
											<div class="row">
												<div class="col-sm-1">
													<button type="submit" id="btn-create" class="btn ink-reaction btn-raised btn-info">PAY NOW</button>
												</div>
											</div>
										</div>
									</form>
								</div>
								<!--end .card-body -->
							</div>
							<!--end .card -->
						</div>
						<div class="col-md-12" ng-app="appList" ng-controller="appCtl">
							<div class="card card-outlined style-info no-padding">
								<div
									class="card-head card-head-sm card-body style-info no-padding">
									<header>STUDENT PAYMENT HISTORIES</header>
								</div>
								<!--end .card-head -->
								<div class="card-body">
									<div class="row">
										<form class="form">
											<div class="col-md-3">
												<div class="form-group floating-label">
													<input type="text" class="form-control" id="id-card"
														required> <label for="id-card">ID CARD</label>
													<p class="help-block">Ex: CB13556</p>
												</div>
											</div>
											<div class="col-md-3">
												<div class="form-group">
													<button type="button" ng-click="search()" class="btn ink-reaction btn-raised btn-info"><i class="md md-search"></i> FIND</button>
												</div>
											</div>
										</form>
									</div>
									<div class="table-responsive">
										<table class='table' id='tb_list'>
											<thead>
												<tr>
													<th class='sort-alpha'>ID CARD</th>
													<th>STUDENT NAME</th>
													<th class='sort-alpha'>RECEIVED BY</th>
													<th>TYPE</th>
													<th>SUBJECT</th>
													<th>DATE PAID</th>
													<th>DATE EXPIRED</th>
													<th>STATUS</th>
												</tr>
										   </thead>
										   <tbody>
										   		<tr ng-repeat="item in items">
										   			<td>{{item.id_card_stu}}</td>
										   			<td>{{item.student_name}}</td>
										   			<td>{{item.receiver}} | {{item.id_card_emp}}</td>
										   			<td ng-if="item.type_fee=='term_fee'">1 TERM</td>
										   			<td ng-if="item.type_fee=='sem_fee'">1 SEMESTER</td>
										   			<td ng-if="item.type_fee=='year_fee'">1 YEAR</td>
										   			<td>{{item.sub_prog_title}}</td>
										   			<td>{{item.date_paid}}</td>
										   			<td>{{item.expire_date}}</td>
										   			<td ng-if="item.status=='t'"><i class="md md-adjust" style="color: #00f;font-size:17px"></i></td>
										   			<td ng-if="item.status=='f'"><i class="md md-adjust" style="color: #e64a19;font-size:17px"></i></td>
										   		</tr>
										   </tbody>
										 </table>
									</div>
								</div>
								<!--end .card-body -->
							</div>
							<!--end .card -->
						</div>
						<!--end .col-md-8 -->
					</div>
					<!--end .row -->
				</div>
				<!--end .section-body -->
			</section>
		</div>
		<!--end #content-->
		<!-- END CONTENT -->

		<!-- BEGIN MENUBAR-->
		<jsp:include
			page="${pageContext.servletContext.contextPath }/../masterleft/menubar.jsp"></jsp:include>
		<!-- END MENUBAR -->
	</div>
	<!--end #base-->
	<!-- END BASE -->

	<!-- MAIN SCRIPT -->
	<script
		src="${pageContext.servletContext.contextPath }/assets/js/core/source/App.js"></script>
	<script
		src="${pageContext.servletContext.contextPath }/assets/js/core/source/AppNavigation.js"></script>
	<script
		src="${pageContext.servletContext.contextPath }/assets/js/core/source/AppForm.js"></script>
	<script
		src="${pageContext.servletContext.contextPath }/assets/js/core/source/AppCard.js"></script>
	<script
		src="${pageContext.servletContext.contextPath }/assets/js/libs/spin.js/spin.min.js"></script>
	<!-- END MAIN SCRIPT  -->

	<script
		src="${pageContext.servletContext.contextPath }/assets/dist/alertify.js"></script>
	<script
		src="${pageContext.servletContext.contextPath }/assets/error/catcherr.js"></script>

 	<script
		src="${pageContext.servletContext.contextPath }/assets/js/libs/select2/select2.min.js"></script>
				
	<script
		src="${pageContext.servletContext.contextPath }/assets/dist/sweetalert2.min.js"></script>
	<script type="text/javascript">
         	$("#payment").addClass("active");
         	listBranch();
         	
         	function payNow(){
         		swal({   
         			 title: "Are you sure?",   
        				 text: "If you are not get involve with this account please click cancel!",   
        				 type: "warning",   
        				 showCancelButton: true,   
        				 confirmButtonColor: "#DD6B55",   
        				 confirmButtonText: "Yes, I am!",   
        				 closeOnConfirm: false 
        	   		    }, function(){   
        	   		    	$.ajax({
        	   	   				url:"payment_now",
        	   	   				type:"POST",
        	   	   				data:{
        	   	   					student_id:$("#select-student").val(),
        	   						teach_id:$("#select-class").val(),
        	   						fee_type:$("#select-feetype").val(),
        	   						discount:$("#discount").val(),
        	   						sub_prog_id:$("#select-subprog").val(),
        	   						total:$("#total").val(),
        	   	   				},
        	   	   				beforeSend: function() {
        	   	   					$("body").append("<div class='sweet-overlay' tabindex='-1' style='opacity: 1.09; display: block;width:100%; text-align:center;' id='loading'><i class='fa fa-spinner faa-spin animated' style='font-size:90px;margin-top:15%;color:black;'></i></div>");
        	   	   			    },
        	   	   				complete: function(){
        	   	   					$("#loading").remove();
        	   	   				},
        	   	   				success:function(status){
        	   	   					alertify.logPosition("bottom right");
        	   						if(status=="true"){
        	   							alertify.success("PAID SUCCESSFULLY !");
        	   							//listStudInfo();
        	   	 						reset();
        	   	        			}else{
        	   							swal("FALIED","Unable to Create Payment","error");
        	   						}
        	   	   				},
        	   	   				error: function(jqXHR, exception) {
        	   	   	          		catchErr(jqXHR, exception);
        	   	   	            }
        	   	   			});
        	   		    });
            }
         	
         	
         	//listBranch
         	function listBranch(){
	  			$.ajax({
	  				url:"branchlistactive.json",
	  				dataType:"json",
	  				type:"POST",
	  				
	  				beforeSend: function() {
	  					$("body").append("<div class='sweet-overlay' tabindex='-1' style='opacity: 1.09; display: block;width:100%; text-align:center;' id='loading'><i class='fa fa-spinner faa-spin animated' style='font-size:90px;margin-top:15%;color:black;'></i></div>");
	  			    },
	  				complete: function(){
	  					$("#loading").remove();
	  				},
	  				success:function(data){
	  					if(data!="")
	  					$("#branch-list").html(listBranch_Supply(data))
	  					.change();
	  					 
	  				},
	               	error: function(jqXHR, exception) {
	               		catchErr(jqXHR, exception);
	                 }
	  			});
	  		  }
	          function listBranch_Supply(data){
	  			var list = "";
	  			list += "<option value="+data[0].branch_id+" selected='selected'>"
	  			+ data[0].branch_name + "</option>";
	  			for (var i = 1; i < data.length; i++) {
	  					list += "<option value="+data[i].branch_id+">"
	  							+ data[i].branch_name + "</option>";
	  				
	  			}
	  		
	  			return list;
	          }
         	
         	//listStudent
         	var liststuinfo;
         	function listStudInfo(){
	  			$.ajax({
	  				url:"liststudinfo.json",
	  				method:"POST",
	  				beforeSend: function() {
	  					$("body").append("<div class='sweet-overlay' tabindex='-1' style='opacity: 1.09; display: block;width:100%; text-align:center;' id='loading'><i class='fa fa-spinner faa-spin animated' style='font-size:90px;margin-top:15%;color:black;'></i></div>");
	  			    },
	  				complete: function(){
	  					$("#loading").remove();
	  				},
	  				success:function(data){
	  					liststuinfo=data;
	  					if(data!="")
	  					$("#select-student").html(listStudInfo_Supply(data));
	  					$("#select-student").select2();
	  				},
	  				error: function(jqXHR, exception) {
	  	          		catchErr(jqXHR, exception);
	  	            }
	  			});
  			}
         	function listStudInfo_Supply(data){
           	 var list = "";
           	 var len=data.length;
           		list += "<option value=''></option>";
     			for (var i = 0; i <len ; i++) {
     				if(data[i].status=='t' && data[i]['branch_id']==$("#branch-list").val())
     				list += "<option value="+data[i].student_id+">"
     						+ data[i].en_name +" ["+data[i]['id_card']+"]</option>";
     			}
     			return list;
            }
            //SUBPROGRAM
            var listsubprog;
            function listSubProg(){
    			$.ajax({
    				url:"paymentsubjectfilter.json",
    				method:"POST",
    				data:{
    					student_id:$("#select-student").val()
           			},
    				
    				success:function(data){
    					
    					listsubprog =data;
    					if(data!="")
    					$("#select-subprog").html(subProgList_Supply(data)).change();
    					$("#select-subprog").select2();
    					
    				},
    				error: function(jqXHR, exception) {
    	          		catchErr(jqXHR, exception);
    	            }
    			});
    		 }
            function subProgList_Supply(data){
           	 var list = "";
     			for (var i = 0; i < data.length; i++) {
     				list += "<option value="+data[i].sub_prog_id+">"
     						+ data[i].sub_prog_title + "</option>";
     				
     			}
     			return list;
            }
            function listClass(){
   				$.ajax({
   					url:"classlist.json",
   					type:"POST",
   					beforeSend: function() {
   						$("body").append("<div class='sweet-overlay' tabindex='-1' style='opacity: 1.09; display: block;width:100%; text-align:center;' id='loading'><i class='fa fa-spinner faa-spin animated' style='font-size:90px;margin-top:15%;color:black;'></i></div>");
   				    },
   					complete: function(){
   						$("#loading").remove();
   					},
   					success:function(data){
   						if(data!="")
   						$("#select-class").html(listClassSupply(data));
   						$("#select-class").select2();
   					},
   					error: function(jqXHR, exception) {
   		          		catchErr(jqXHR, exception);
   		            }
   				});
   		 }
         
   	     function listClassSupply(data){
   	     var clinB=classInBranch(data);
   	     var tinB= teachInBranch(listTeaching);
   	     var cAval = classAvaliable(tinB,clinB);
   	    	
   	     // console.log(cAval);
          	 var list = "";
    		 var lent=cAval.length;
     			 list+="<optgroup label='Classroom'>";
     			for (var i = 0; i < lent; i++) {
     				list += "<option value="+cAval[i].teach_id+">"
   			 		 + cAval[i].class_name +"</option>";
     			}
     			list+="</optgroup>";
   		    return list;
   	     }
   	     //Filter class in current branch
   	     function classInBranch(data){
   	    	 var classId=[];
   	    	 var len=data.length;
   	    	 for (var i = 0; i < len; i++) {
     				//filter class in one branch
     				if(data[i]['branch_id']==$("#branch-list").val()){
   					classId.push(data[i]);
     				}	
   	  		 }
   			 return classId;
   	     }
   	     
   	    //Filter teaching in current branch
   	    function teachInBranch(data){
   	    	 var obj=[];
   	    	 var len=data.length;
   	    	 for (var i = 0; i < len; i++) {
     				//filter teaching in one branch
     				if(data[i]['branch_id']==$("#branch-list").val()){
   					obj.push(data[i]);
     				}	
   	  		 }
   			 return obj;
   	     }
   	     
   	    //Find avaliable class after filter in one branch
           function classAvaliable(tinB,clinB){
        	  /*  console.log(tinB);
      	    	console.log(clinB); */
	           	 var result1=[],result2=[];
	           	 var tmp=null;
	           	 //Combine teach & class to find unique
	           	 for(var i=0; i<clinB.length; i++){
	           		 for(var j=0; j<tinB.length; j++){
	           			 if(clinB[i]['class_id'] == tinB[j]['class_id']){
	           				tmp=tinB[j];break;
	           			 }else{
	           				tmp=null;
	           			 }
	           		 }
	           		 if(tmp!=null)result1.push(tmp);
	           	 } 
	           	 for(var i=0;i<result1.length;i++){
	           		 if(result1[i]['sub_prog_id']==$("#select-subprog").val())
	           			result2.push(result1[i]);
	           	 }
	           	 return result2;
            }
   	    	
           var listTeaching;
     	     //Get for filter data
     	     function getListTeaching(){
             	 $.ajax({
             		url:"teachinglist.json",
             		method:"POST",
             		success:function(data){
             			if(data!="")
             			listTeaching=data;
             		},
                   	error: function(jqXHR, exception) {
                   		catchErr(jqXHR, exception);
                    }
             	 });
              };
            
            var raw_price;
            $("#branch-list").on("change",function(){
            	listStudInfo();
            });
            $("#select-student").on("change",function(){
            	listSubProg();
            });
            $("#select-subprog").on("change",function(){
            	getListTeaching();
            	listClass();
            	getFee();
            });
            $("#select-feetype").on("change",function(){
           	    getFee();
           	    $("#select-subprog").val();
            });
            $("#discount").on("change keypress keyup",function(){
           	 if(raw_price>-1){
   	        	 dis=raw_price-(raw_price*($("#discount").val()/100));
   	        	 $("#total").val(dis).change(); 
           	 }
            });
            function getFee(){
            	console.log(listsubprog);
	           	 for(var i=0;i<listsubprog.length;i++){
	           		 if(listsubprog[i]['sub_prog_id']==$("#select-subprog").val()){
	           			 $("#total").val(listsubprog[i][$("#select-feetype").val()]).change();
	           			 raw_price=listsubprog[i][$("#select-feetype").val()];
	           			 $("#discount").change();
	           			 break;
	           		 }
	           	 }
            }
            var app=angular.module("appList",[]);
            app.controller("appCtl",function($scope,$http){
            	date=new Date();
            	$scope.dateNow=date;//date.setDate(date.getDate()-10);
            	$scope.search=function(){
            		$("body").append("<div class='sweet-overlay' tabindex='-1' style='opacity: 1.09; display: block;width:100%; text-align:center;' id='loading'><i class='fa fa-spinner faa-spin animated' style='font-size:90px;margin-top:15%;color:black;'></i></div>");
            		$http({
                		url:"paymentlist.json",
                		method:"POST",
                		params:{
                			search:$("#id-card").val()
                		}
                	}).then(function(resp){
                		$("#loading").remove();
                		if(resp.data==""){
                			swal("INFO","No record found","info");
                			$scope.items="";
                		}else{
                			$scope.items=resp.data;
                		}
                		
                	},function errorCallbakc(jqXHR, exception){
                		catchErr(jqXHR, exception);
                	});
            	}
            	
            });
          
            $("#fm-pay").submit(function(e){
      			e.preventDefault();
  	    		payNow();
  	 			
             });
            
            function reset(){
	   	         $("#select-subprog").select2("val","").change();
	   	         $("#discount").val();
	   	         $("#total").val();
            }
            $(function(){
                $('.card-head .tools .btn-collapse').on('click', function (e) {
        			var card = $(e.currentTarget).closest('.card');
        			materialadmin.AppCard.toggleCardCollapse(card);
            	});
                $('.card-head .tools .btn-refresh-list').on('click', function (e) {
              		var card = $(e.currentTarget).closest('.card');
              		materialadmin.AppCard.addCardLoader(card);
              		
              		setTimeout(function () {
              			materialadmin.AppCard.removeCardLoader(card);
              		}, 150);
          		});
             	$('.card-head .tools .btn-refresh').on('click', function (e) {
              		var card = $(e.currentTarget).closest('.card');
              		materialadmin.AppCard.addCardLoader(card);
              		
              		setTimeout(function () {
              			materialadmin.AppCard.removeCardLoader(card);
              		}, listStudInfo());
          		});
                
    		  });
         	
         	
	</script>
</body>
</html>