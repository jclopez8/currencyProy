<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1"/>
<meta name="layout" content="main"/>
<title>title</title>
</head>

<body>
<table>
  <g:form name="testForm" controller="transaction" action="index">
    <tr>
      <td>
  		<input type="hidden" id="currencyHidden1" value="${currency1}"/>
  		<input type="hidden" id="currencyHidden2" value="${currency2}"/>
  		<g:textField name="units" value="${units}">  </g:textField>
        <select name="currency1" id="currency1">
	           <option value="USD" selected="selected">USD Dollar</option>
	           <option value="EUR">Euro</option>
	           <option value="CAD">Canada Dollar</option>
	           <option value="NZD">New Zeland Dollar</option>
	           <option value="GBP">Grand British Pound</option>
	           <option value="JPY">Japanese Yen</option>
	           <option value="MXN" >Mexican pesos</option>
    	</select>
           <select name="currency2" id="currency2">
	        
	            <option value="EUR" selected="selected">Euro</option>
	            <option value="USD" >USD Dollar</option>
	           <option value="CAD" >Canada Dollar</option>
	           <option value="NZD" >New Zeland Dollar</option>
	           <option value="GBP" >Grand British Pound</option>
	           <option value="JPY">Japanese Yen</option>
	           <option value="MXN" >Mexican pesos</option>
    	</select>
        <g:textField name="total" value="${total}"> </g:textField> 
        <g:submitButton name="buton"/>
        </td>
		 </tr>
	 <tr><td> <a href="http://localhost:8080/test2/">Home</a>  </td>  </tr>
</g:form>
</table>
</body>
</html>