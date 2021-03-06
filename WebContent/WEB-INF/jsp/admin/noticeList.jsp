<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/jsp/inc/taglibs.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<title>资讯列表</title>
<%@ include file="/WEB-INF/jsp/inc/admin_style.jsp"%>
<link href="<c:url value='/resources/bootstrap/css/bootstrap.min.css'/>" rel="stylesheet"/>
<style type="text/css">
/*分页样式*/
.pagination a {
	cursor: pointer;
	-moz-user-select: none;
	-webkit-user-select: none;
	-ms-user-select: none;
	-khtml-user-select: none;
	user-select: none;
}

</style>

</head>
<body>
	<div class="mainwrapper">
		<jsp:include page="header.jsp"></jsp:include>
		<div class="leftpanel">
			<jsp:include page="leftmenu.jsp"></jsp:include>
		</div>
		
		<div class="rightpanel">
			<ul class="breadcrumbs">
	            <li><a href="${pageContext.request.contextPath }/admin"><i class="iconfa-home"></i></a> <span class="separator"></span></li>
	            <li>资讯管理 <span class="separator"></span></li>
	            <li>资讯列表</li>
        	</ul>
        	<div class="maincontent">
        	<div class="maincontentinner">
            <div class="widget">
                <h4 class="widgettitle">资讯列表</h4>
            	<table class="table table-bordered responsive">
           			<thead>
                       <tr>
                       	  <th class="centeralign"><input type="checkbox" class="checkall" /></th>	
                          <th>序号</th>
				          <th>标题</th>
				          <th>内容</th>
				          <th>发布时间</th>
				          <th>状态</th>
				          <th>操作</th>
                       </tr>
                    </thead>
                    <tbody id='t_body'>
                    </tbody>
                </table>
                
                <div class="panel-footer">
					<nav style="text-align: center;">
					    <ul id="page" class="pagination" data-first-btn-text="首页" data-last-btn-text="尾页"></ul>
					</nav>
	            </div>
            </div><!--widget-->
            </div>
            </div>      
		</div>
	</div>
	<script type="text/javascript" src="${ctx }/resources/scripts/utils/util.js"></script>
	<script type="text/javascript">
		jQuery(function(){
			var $ = jQuery;
			// 分页显示学生列表
			pager();
			
		})

		function pager() {
			$("#page").page({
			    remote: {
			        url: contextPath + "/admin/noticeList",
			        callback: function (result) {
			        	var datas = result.datas;
			        	var len = datas.length;
			        	var html = "";
			        	if(len == 0) {
			        		$('thead').hide();
							html = '<div style="text-align: center; color: blue;">暂无数据</div>';			        		
			        	}else {
			        		$('thead').show();
			        		for(var i = 0; i < len; i++) {
			        			var notice = datas[i];
			        			var content = notice.content;
			        			if(content && content.length > 10) {
			        				content = content.substring(0, 10)+"...";
			        			}
			        			
			        			var status = notice.status == 0 ? '草稿' : '发布';
			        			
					        	html += "<tr>"
			        		   		+ "<th class='centeralign'><input type='checkbox' class='checkall' /></th>"
			        				+ "<td>"+(i+1)+"</td>"
			        				+ "<td>"+ notice.title+"</td>"
			        				+ "<td>"+ content +"</td>"
			        				+ "<td style='width: 110px;'>"+ formatterDate(notice.pubTime) +"</td>"
			        				+ "<td>"+ status +"</td>"
			        				+ "<td><span class='detail' data-id='"+notice.id+"' style='cursor: pointer;'>编辑</span></td>"
			        			+"</tr>";
			        		}
			        	}
			        	$('#t_body').html(html);
			        }
			    },
				pageIndexName: 'pageIndex',     //请求参数，当前页数，索引从0开始
				pageSizeName: 'pageSize',       //请求参数，每页数量
				totalName: 'totalRecord'       //指定返回数据的总数据量
			});
			
			
			$('#t_body').on('click', '.detail', function() {
				var $this = $(this);
				var id = $this.data('id');
				
				window.location.href = contextPath + '/admin/pubNotice?noticeId='+id;
			});
		}
		
	</script>
</body>
</html>    
