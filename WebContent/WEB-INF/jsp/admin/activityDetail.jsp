<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/jsp/inc/taglibs.jsp"%>
    
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<title>详情活动</title>
<%@ include file="/WEB-INF/jsp/inc/admin_style.jsp"%>

<style type="text/css">
	.my-par {
		height: 32px;
	}
	.tips {
   		color: red;
   		padding-left: 10px;
    }
     .div-top {
    	padding-top: 5px;
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
	            <li>活动管理 <span class="separator"></span></li>
	            <li>活动详情</li>
        	</ul>
        	<div class="maincontent">
        	<div class="maincontentinner">
            <div class="widget">
                <h4 class="widgettitle">活动详情</h4>
                <div class="widgetcontent">
                    <form id="pub_form" class="stdform">
                    <table style="width: 850px;">
                    	<tr>
                    		<td colspan="2">
	                    		<div class="par control-group my-par">
	                                <label class="control-label" for="name">
	                                	活动名称<span class="tips">*</span>
	                                </label>
	                                <div class="controls">
										<input type="hidden" name="id" id="id" />	                               
	                                	<input type="text" name="name" id="name" class="input-xxlarge" style="width: 575px;" autofocus="autofocus"/>
	                                </div>
	                            </div>
                    		</td>
                    		
                    	</tr>
                    	<tr>
                    		<td>
	                    		<div class="par control-group my-par">
	                                <label class="control-label" for="dateTime">
	                                	活动时间<span class="tips">*</span>
	                                </label>
	                                <div class="controls">
	                                	<input type="text" name="dateTime" id="dateTime" class="input-medium" />
	                                </div>
	                            </div>
                    		</td>
                    		<td>
	                    		<div class="par control-group my-par">
	                                <label class="control-label" for="endDate">
	                                	报名截止日期<span class="tips">*</span>
	                                </label>
	                                <div class="controls">
	                                	<input type="text" name="endDate" id="endDate" class="input-medium" />
	                                </div>
	                            </div>
                    		</td>
                    		
                    	</tr>
                    	<tr>
                    		<td>
	                    		<div class="par control-group my-par">
	                                <label class="control-label" for="location">
	                                	活动地点<span class="tips">*</span>
	                                </label>
	                                <div class="controls">
	                                	<input type="text" name="location" id="location" class="input-medium" />
	                                </div>
	                            </div>
                    		</td>
                    		<td>
	                    		<div class="par control-group my-par">
	                                <label class="control-label" for="aim">
	                                	活动目的<span class="tips">*</span>
	                                </label>
	                                <div class="controls">
	                                	<input type="text" name="aim" id="aim" class="input-medium" />
	                                </div>
	                            </div>
                    		</td>
                    		
                    	</tr>
                    	<tr>
                    		<td>
	                    		<div class="par control-group my-par">
	                                <label class="control-label" for="content">
	                                	活动内容<span class="tips">*</span>
	                                </label>
	                                <div class="controls">
	                                	<input type="text" name="content" id="content" class="input-medium" />
	                                </div>
	                            </div>
                    		</td>
                    		<td>
	                    		<div class="par control-group my-par">
	                                <label class="control-label" for="actType">
	                                	加分类型<span class="tips">*</span>
	                                </label>
	                                <div class="controls">
	                                	 <select name="actType.id" id="actType" class="uniformselect" style="width: 160px;">
			                            </select>
	                                </div>
	                            </div>
                    		</td>
                    		
                    	</tr>
                    	<tr>
                    		<td>
	                    		<div class="par control-group my-par">
	                                <label class="control-label" for="duration">
	                                	加分时长（小时）<span class="tips">*</span>
	                                </label>
	                                <div class="controls">
	                                	<input type="text" name="duration" id="duration" class="input-small" />
	                                </div>
	                            </div>
                    		</td>
                    		
                    		<td>
	                    		<div class="par control-group my-par">
	                                <label class="control-label" for="actObject">
	                                	参与对象<span class="tips">*</span>
	                                </label>
	                                <div class="controls">
	                                	<input type="text" name="actObject" id="actObject" class="input-medium" />
	                                </div>
	                            </div>
                    		</td>
                    		
                    	</tr>
                    	<tr>
                    		<td>
	                    		<div class="par control-group my-par">
	                                <label class="control-label" for="number">
	                                	参与人数<span class="tips">*</span>
	                                </label>
	                                <div class="controls">
	                                	<input type="text" name="number" id="number" class="input-small" />
	                                </div>
	                            </div>
                    		</td>
                    		<td>
	                    		<div class="par control-group my-par">
	                                <label class="control-label" for="contact">
	                                	联系人<span class="tips">*</span>
	                                </label>
	                                <div class="controls">
	                                	<input type="text" name="contact" id="contact" class="input-medium" />
	                                </div>
	                            </div>
                    		</td>
                    		
                    	</tr>
                    	<tr>
                    		<td>
	                    		<div class="par control-group my-par">
	                                <label class="control-label" for="phone">
	                                	联系方式<span class="tips">*</span>
	                                </label>
	                                <div class="controls">
	                                	<input type="text" name="phone" id="phone" class="input-medium" />
	                                </div>
	                            </div>
                    		</td>
                    		<td>
	                    		<div class="par control-group my-par">
	                                <label class="control-label" for="assist">
	                                	协助人员
	                                </label>
	                                <div class="controls">
	                                	<input type="text" name="assist" id="assist" class="input-medium" />
	                                </div>
	                            </div>
                    		</td>
                    		
                    	</tr>
                    		<tr>
                    		<td>
	                    		<div class="par control-group my-par">
	                                <label class="control-label" for="assist">
	                                	活动状态
	                                </label>
	                                <div class="controls div-top" id='activity_status'>
										
	                                </div>
	                            </div>
                    		</td>
                    	</tr>
                    </table>
                      <p class="stdformbutton" style="margin-left: 400px;">
                      	<button type="button" id="updateActivity" class="btn btn-primary">更新活动</button>
                      	  
                      	<c:if test="${user.authority == 1}">
                      	   <button type="button" class="btn btn-primary" onclick="audit(1)">通过</button>
                          &nbsp;&nbsp;&nbsp;<button type="button" class="btn btn-primary" onclick="audit(-1)">不通过</button>
                      	</c:if>
                      </p>
                    </form>
                </div><!--widgetcontent-->
            </div><!--widget-->
            </div>
            </div>      
		</div>
	</div><!--end of mainwrapper-->

	<script type="text/javascript">
		var $ = jQuery;
		
		// 管理员审核活动
		function audit(status) {
			jQuery.post(contextPath+"/admin/aduitActivity", 
					{'actId': $('#id').val(), "status": status}).done(function(msg){
				if(msg == 'success') {
					alert('操作成功！');
					window.location.reload();
				}else if(msg == 'fail') {
					alert('操作失败！');
				}
						
			}).fail(function(){
				alert('服务器端错误！');
			});
		}
		
		
		$(function() {
			
			//  更新活动信息
			$('#updateActivity').click(function() {
				var data = get_form_data('#pub_form');
				
				$.post(contextPath+"/college/updateActivity", data).done(function(msg){
					if(msg == 'success') {
						alert('更新成功！');
					}else if(msg == 'fail') {
						alert('更新失败！');
					}
				}).fail(function(){
					alert('服务器端错误！');						
				});
			});
			
			// 加载活动信息
			jQuery.post(contextPath+"/admin/activity_detail", {"id": '${activityId}'}).done(function(result){
				var id = result.id;
				var name = result.name;
				var dateTime = result.dateTime;
				var endDate = result.endDate;
				var location = result.location;
				var aim = result.aim;
				var content = result.content;
				var actTypeId = result.actType.id; // 加分类型
				var duration = result.duration;
				var actObject = result.actObject;
				var number = result.number;
				var contact = result.contact;
				var phone = result.phone;
				var assist = result.assist;
				
				// 用户身份
				var user_authority = '${user.authority}'
				
				if(user_authority == 1) {	// 管理员
					$('#updateActivity').hide();
					// 将输入框置为不可编辑状态
					$('#name').attr('readonly', 'readonly');
					$('#dateTime').attr('readonly', 'readonly');
					$('#endDate').attr('readonly', 'readonly');
					$('#location').attr('readonly', 'readonly');
					$('#aim').attr('readonly', 'readonly');
					$('#content').attr('readonly', 'readonly');
					$('#duration').attr('readonly', 'readonly');
					$('#actObject').attr('readonly', 'readonly');
					$('#number').attr('readonly', 'readonly');
					$('#contact').attr('readonly', 'readonly');
					$('#phone').attr('readonly', 'readonly');
					$('#assist').attr('readonly', 'readonly');
					
				
				}else if(user_authority == 0) {	// 用工单位
					$('#updateActivity').show();
				}
				
				// 活动审核状态
				var status = result.status;
				
				if(status != 0) {	// 不是待审核（是通过、未通过）
					$('#updateActivity').hide();
				}				
				
				$('#id').val(id);
				$('#name').val(name);
				$('#dateTime').val(dateTime);
				$('#endDate').val(formatterDate(endDate));
				$('#location').val(location);
				$('#aim').val(aim);
				$('#content').val(content);
				$('#duration').val(duration);
				$('#actObject').val(actObject);
				$('#number').val(number);
				$('#contact').val(contact);
				$('#phone').val(phone);
				$('#assist').val(assist);
				
				if(status == 0) {
    				status = '待审核';
    			}else if(status == 1) {
    				status = '审核通过';
    			}else if(status == -1) {
    				status = '未通过';
    			}
				
				$('#activity_status').html(status);
					
				// 加载活动加分类型
				jQuery.ajax({
					url: contextPath + "/activityTypes",
					dataType: "json",
					success: function(data){
						var html = "";
						for(var i = 0; i < data.length; i++) {
							var type = data[i];
							var op = "<option value="+ type.id +">" + type.name + "</option>";
							if(type.id == actTypeId) {
								op = "<option value="+ type.id +" selected='selected'>" + type.name + "</option>";
							}
							html += op;
						}
						jQuery("#actType").html(html);
					}
				});
				
			}).fail(function(){
				alert('服务器端错误！');				
			});
			
		});
		
		
	</script>
</body>
</html>    



