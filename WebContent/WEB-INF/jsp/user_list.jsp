<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%
	String path = request.getContextPath() + "/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html5/loose.dtd">
<html>

<head>

<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">


<title>用户列表</title>
<meta name="keywords" content="">
<meta name="description" content="">

<link href="<%=path%>css/bootstrap.min.css?v=3.3.6" rel="stylesheet">
<link href="<%=path%>css/font-awesome.css?v=4.4.0" rel="stylesheet">

<!-- jqgrid-->
<link href="<%=path%>css/ui.jqgrid.css?0820" rel="stylesheet">

<link href="<%=path%>css/animate.css" rel="stylesheet">
<link href="<%=path%>css/style.css?v=4.1.0" rel="stylesheet">

<style>
/* Additional style to fix warning dialog position */
#alertmod_table_list_2 {
	top: 900px !important;
}
</style>

</head>

<body class="gray-bg">
	<div class="wrapper wrapper-content  animated fadeInRight">
		<div class="row">
			<div class="col-sm-12">
				<div class="ibox ">
					<div class="ibox-title">
						<h5></h5>
					</div>
					<div class="ibox-content">
						<hr>
						<h4 class="m-t">用户列表</h4>

						<div class="jqGrid_wrapper">
							<table id="table_list_2"></table>
							<div id="pager_list_2"></div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

	<!-- 全局js -->
	<script src="<%=path%>js/jquery.min.js?v=2.1.4"></script>
	<script src="<%=path%>js/bootstrap.min.js?v=3.3.6"></script>



	<!-- Peity -->
	<script src="<%=path%>js/jquery.peity.min.js"></script>

	<!-- jqGrid -->
	<script src="<%=path%>js/grid.locale-cn.js?0820"></script>
	<script src="<%=path%>js/jquery.jqGrid.min.js?0820"></script>

	<!-- 自定义js -->
	<script src="<%=path%>js/content.js?v=1.0.0"></script>

	<!-- Page-Level Scripts -->
	<script>
       var path = "<%=path%>";
      
       
       $.post(path+"MyWebContorller/Json4UserList", null, function(data){
    	   
           $(document).ready(function(){
        	  
        	   	$.jgrid.defaults.styleUI = 'Bootstrap';
        	  
        	   	$("#table_list_2").jqGrid({
                    data: data,
                    datatype: "local",
                    height: 450,
                    autowidth: true,
                    shrinkToFit: true,
                    rowNum: 4,
                    rowList: [4, 4,4,4 ],
                    colNames: ['ID号','用户名', '日期', '类型'],
                    colModel: [
                    	{
                            name: 'ID',
                            index: 'ID',
                            editable: true,
                            width: 60,
                            sorttype: "int",
                            search: true ,
                            hidden : true
                        },
                        {
                            name: 'NAME',
                            index: 'NAME',
                            editable: true,
                            width: 60,
                            sorttype: "string",
                            search: true
                        },
                        {
                            name: 'CREATETIME',
                            index: 'CREATETIME',
                            editable: true,
                            width: 90,
                            sorttype: "date",
                            formatter: "date"
                        },
                        {
                            name: 'TYPE',
                            index: 'TYPE',
                            editable: true,
                            width: 100
                        }
                    ],
                    pager: "#pager_list_2",
                    viewrecords: true,
                    caption: "用户列表",
                    add: true,
                    edit: true,
                    addtext: 'Add',
                    edittext: 'Edit',      
                    hidegrid: false,
                    onSelectRow: function(id){alert(id);},
                    onPaging :function(pgButton){
                        console.log(pgButton);
                    	var rowid = $('#table_list_2').jqGrid("getGridParam","page");
                    	switch (pgButton){
                    	case "next" :
                        	alert(rowid +1);
                        	break;
                    	case "prev" :
                    		alert(rowid -1);
                    		break;
                    	}
                    	console.log(rowid);
					}
             	    	 
                });

        	   // $("#table_list_2").setSelection('', true);
        	    
        	    $("#table_list_2").jqGrid('navGrid', '#pager_list_2', {
                    edit: true,
                    add: true,
                    del: true,
                    search: true
                }, {
                    height: 200,
                    reloadAfterSubmit: true
                },{},{url  : path+"MyWebContorller/Json4UserList"},{});
        	    var rowid = $('#table_list_2').jqGrid("getGridParam", "selrow");
        	    console.log(rowid);  
        	  
               
        	    $(window).bind('resize', function () {
                    var width = $('.jqGrid_wrapper').width();
                    $('#table_list_2').setGridWidth(width);
                    
                });
        	   
        	   // $.post(path+'MyWebContorller/Json4UserList',{curPage : curPage});
               });  
           });
         
	</script>




</body>

</html>
