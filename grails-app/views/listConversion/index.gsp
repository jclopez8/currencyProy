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
		    <g:each var="currency" in="${listCurrency}"> 
			      <tr>
			          <td><g:textField name="${currency.source}" value="${currency.source}" /> </td>
			          <td><g:textField name="${currency.destiny}" value="${currency.destiny}" /> </td>
			          <td><g:textField name="${currency.rate}"  value="${currency.rate}"/>   </td>
			          <td><g:link controller="Conversion" action="index" params="[currencyId:currency.id]">Change Value</g:link></td>
			      </tr>
		    </g:each>
		
		  <tr><td> <a href="http://localhost:8080/test2/">Home</a>  </td>  </tr>
		
	   </table> 
	   
   </g:form>
  </div>
</body>
</html>