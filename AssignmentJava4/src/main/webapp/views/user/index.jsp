<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Filmlane - Home</title>

<!-- 
    - favicon
  -->
  
	
<link rel="shortcut icon" href="<c:url value="/views/user/view/readme-images/favicon.svg"/>" type="image/svg+xml">

<!-- 
    - custom css link
-->
<link rel="stylesheet" href="<c:url value='/views/user/view/assets/css/movies.css'/>">
 

<!-- 
    - google font link
-->
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link
	href="https://fonts.googleapis.com/css2?family=Poppins:wght@400;500;600;700&display=swap"
	rel="stylesheet">
</head>

<body id="top">

	<!-- 
    - #HEADER
  -->


	<%@include file="/views/user/view/header_project.jsp"%>

	

	<!-- 
		- Main-index
	 -->

	<%@include file="/views/user/view/main_index.jsp"%>



	<!-- 
    - #FOOTER
  -->

	<%@include file="/views/user/view/fooder.jsp"%>





	<!-- 
    - #GO TO TOP
  -->

	<a href="#top" class="go-top" data-go-top> <ion-icon
			name="chevron-up"></ion-icon>
	</a>





	<!-- 
    - custom js link
  -->
  
	<script src="<c:url value='/views/user/view//assets/js/movies.js'/>"></script>

  
 
	<!-- 
    - ionicon link
  -->
	<script type="module"
		src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.esm.js"></script>
	<script nomodule
		src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.js"></script>

</body>

</html>