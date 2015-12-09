<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/jsp/inc/taglibs.jsp"%>       
<!DOCTYPE html>
<html lang="zh-cn">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>文档列表</title>
    <%@ include file="/WEB-INF/jsp/inc/style.jsp"%>

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
    
     <style type="text/css">
    	.pagination a {
		    cursor: pointer;
		    -moz-user-select: none;
		    -webkit-user-select: none;
		    -ms-user-select: none;
		    -khtml-user-select: none;
		    user-select: none;
		}
    	
    	td, th {
    		font-family: "微软雅黑";
    		text-align: center;
    	}
    
    </style>
  </head>
  <body>
	<div class="container">
		<jsp:include page="header.jsp"></jsp:include>
		<div class="row">
			<ol class="breadcrumb">
			  <li><a href="${ctx}/stu/index">首页</a></li>
			  <li class="active">文档列表</li>
			</ol>
			<table class="table table-bordered table-hover table-condensed table-responsive">
				 <thead>
			      <tr>
			         <th>文档名称</th>
			         <th>上传单位</th>
			         <th>上传时间</th>
			         <th>操作</th>
			      </tr>
			   	</thead>
			   	<tbody>
			    	
			   	</tbody>
			</table>
			
			<div class="panel-footer">
				<nav style="text-align: center;">
				    <ul id="page" class="pagination" data-first-btn-text="首页" data-last-btn-text="尾页"></ul>
				</nav>
            </div>
            
		</div>
	</div>
	
	<script type="text/javascript" src="${ctx }/resources/scripts/utils/util.js"></script>
	<script type="text/javascript" src="${ctx }/resources/scripts/ui/student/doc.js"></script>
  </body>
</html>

    