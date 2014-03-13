<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1"/>
<meta name="layout" content="main"/>
<title>Insert title here</title>
</head>
<body>
  <div class="body">
  <table>
	   <g:each var="transaction" in="${listTransactions}"> 
	      <tr>
	          <td><g:textField name="source" value="${transaction.source}" /> </td>
	          <td><g:textField name="destiny" value="${transaction.destiny}" /> </td>
	          <td><g:textField name="rate"  value="${transaction.rate}"/>   </td>
	      </tr>
	   </g:each>
	   <tr><td> <a href="http://localhost:8080/test2/">Home</a>  </td>  </tr>
   </table> 
  </div>
</body>
</html>