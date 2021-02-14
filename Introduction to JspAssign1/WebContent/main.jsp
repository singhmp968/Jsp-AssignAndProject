<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.util.ArrayList"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<%

String num = request.getParameter("name");
int n1 = Integer.parseInt(num);


printPrime(n1);
%>

<%!
ArrayList li = new ArrayList<Integer>();
public  boolean isPrime(int n) 
{ 
// Corner case 
if (n <= 1) 
    return false; 
  
// Check from 2 to n-1 
for (int i = 2; i < n; i++) 
    if (n % i == 0) 
        return false; 
  
return true; 
} 

public void printPrime(int n1) 
{ 
	
for (int i = 2; i <= n1; i++)  
{ 
    if (isPrime(i))
    	li.add(i);
        System.out.print(i + " "); 
} 
} 




%>


<%=li %>


<table cellspacing="2" cellpadding="2">

<tr><th>Prime Number</th></tr>
<%
for(int i=0;i<li.size();i++){



%>
<tr><td><%=li.get(i)%></td> 
<%
}
%>

</tr>	
</table>


	
</body>
</html>