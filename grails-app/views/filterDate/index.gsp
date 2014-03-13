<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1"/>
<meta name="layout" content="main"/>
<title>Insert title here</title>
</head>
<body>
  <div class="body">
  <g:form name="filterForm" controller="filterDate" action="search">
		  <table>
		  <tr>
		    <td>
		    
		       <g:datePicker name="filterDate" value="${filterDate}" precision="day" years="${1982..2020}"/>
		            <g:submitButton name="buton"/>
		    
		    </td>
		    </tr>
		  </table>
	    </g:form>
	  <table>
		   <g:each var="transaction" in="${listTransactions}"> 
		      <tr>
		          <td><g:textField name="source" value="${transaction.source}" /> </td>
		          <td><g:textField name="destiny" value="${transaction.destiny}" /> </td>
		          <td><g:field name="rate" type="text" value="${transaction.rate}"/>   </td>
		      </tr>
		   </g:each>
		   <tr><td> <a href="http://localhost:8080/test2/">Home</a>  </td>  </tr>
	   </table> 
  
  </div>
</body>
</html>