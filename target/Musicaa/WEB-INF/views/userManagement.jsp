<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<br>
<br>
<div class="col-sm-2"></div>

 <div class="col-sm-8">
                   <center>
					<h3>Customer List</h3>
					</center>
<br>
        <table class="table table-bordered table-striped fs13">
            <thead>
            <tr class="bg-success" >
                <th>Name</th>
                <th>Email</th>
                <th>Phone</th>
                <th>User Name</th>
                <th>Enabled</th>

            </tr>
            </thead>
            <c:forEach items="${usersDetailList}" var="usersDetail">
                <tr>
                    <td>${usersDetail.userFullName}</td>
                    <td>${usersDetail.userEmail}</td>
                    <td>${usersDetail.userPhone}</td>
                    <td>${usersDetail.username}</td>
                    <td>${usersDetail.enabled}</td>
                </tr>
            </c:forEach>
        </table>
        </div>
       
<!-- div class="col-sm-12">
        <!--%@include file="/WEB-INF/views/footer.jsp" % -->
