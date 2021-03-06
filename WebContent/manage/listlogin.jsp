<%@page pageEncoding="UTF-8"%>   
<%@ include file="/include/head.jsp" %>  


 <div class="divone">
 
<form id="queryform" name="queryform" action="<%=base %>/Manage?type=listlogin" method="post">

	ID:<input type="text"  style="width: 80px;" id="id" name="id" value="${requestScope.id}" /> 
 	昵称:<input type="text"  style="width: 80px;" id="username" name="username" value="${requestScope.username}" /> 
 	IP:<input type="text"  style="width: 80px;" id="ip" name="ip" value="${requestScope.ip}" /> 
	时间:<input  type="text" id="time" name="time" value="${requestScope.time}" style="width: 70px;" onFocus="WdatePicker({readOnly:false,dateFmt:'yyyy-MM-dd'})"  /> 
	登入登出:<select id="status" name="status" > 
		  	<option value="" <c:if test="${requestScope.status==''}"> selected="selected"  </c:if> >不限</option>
		  	<option value="1" <c:if test="${requestScope.status=='1'}"> selected="selected" </c:if> >登出</option>
		  	<option value="0" <c:if test="${requestScope.status=='0'}"> selected="selected" </c:if> >登入</option>
		  </select>
	<input type="submit" value="查询"   class="buttonblack" onclick=""/>  
	
	<!-- 显示查询结果列表 -->
	<table  class="table" id="table">
		<tr>
			<td > <div onclick="getElementById('ORDER').value='id'; getElementById('queryform').submit();">ID</div> </td>
			<td > <div onclick="getElementById('ORDER').value='username'; getElementById('queryform').submit();">昵称</div> </td>
			<td > <div onclick="getElementById('ORDER').value='time'; getElementById('queryform').submit();">时间</div> </td>
			<td > <div onclick="getElementById('ORDER').value='ip'; getElementById('queryform').submit();">IP</div> </td>
			<td > <div onclick="getElementById('ORDER').value='status'; getElementById('queryform').submit();">状态</div> </td>

		</tr>
		
		<!-- 取出 名为 array的 对象 数组， 每一项名为 list引用 ，显示出来 ,分页提取显示-->
	<c:forEach items="${requestScope.objs}" var="list">
		<tr>
			<td>${list.ID}</td>
			<td>${list.USERNAME}</td>
			<td>${list.TIME}</td>
			<td>${list.IP}</td>
			<td>
			<c:if test="${list.STATUS=='1'}"> 登出 </c:if> 
			<c:if test="${list.STATUS=='0'}"> 登入 </c:if> 
		    </td>
			
		</tr>
	</c:forEach>  
	
	<%@ include file="/include/tablefoot.jsp" %> 
	

	</table>

</form>
</div> 


<%@ include file="/include/foot.jsp" %> 