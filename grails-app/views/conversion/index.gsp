<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1"/>
<meta name="layout" content="main"/>
<title>Insert title here</title>
</head>
<body>
  <div class="body">
  <g:form name="convertionForm" action="save">
	  <table>
		   
		      <tr>
		          <td>
		          <input type="hidden" name="id" value="${id}">
		          <g:textField name="source" value="${source}" />
		           </td>
		          <td><g:textField name="destiny" value="${destiny}" /> </td>
		          <td><g:textField name="rate"  value="${rate}"/>   </td>
		      </tr>
		  <tr>
		  <td>
		    <g:actionSubmit value="Save"/>
		  </td>
		  </tr>
		  <tr><td> <a href="http://localhost:8080/test2/">Home</a>  </td>  </tr>
	   </table> 
	   
   </g:form>
  </div>
</body>
</html>