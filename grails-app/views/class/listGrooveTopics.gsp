<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1"/>
<meta name="layout" content="main"/>
<title>Topics</title>
</head>
<body>
  <ul>
       <g:each in="${topics}">
       		<li>${it }</li>
       	
       
       </g:each>
  </ul>
</body>
</html>