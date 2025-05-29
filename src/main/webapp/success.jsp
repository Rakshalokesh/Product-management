<!-- success.jsp -->
<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<html>
<head><title>Success</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/style.css">

</head>
<body>
    <h2>✅ ${param.msg != null ? param.msg : "Operation completed successfully!"}</h2>
    <a href="index.jsp">Back to Home</a>
</body>
</html>
