<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<%
int num = 5;
int  a =fact(num);

%>


<%!


int fact1=1;

public int fact(int num)
{
	
	if (num < 0){
		   return -1;
	}
	
	else if( num == 0){
		   return -1;

	}else{
		for(int i=1;i<=num;i++){
			fact1*=i;
		}
	}



return fact1;}

%>
<table>
  <tr>
    <th>number</th>
    <th>factorail</th> 
    
  </tr>
  <tr>
    <td><%=num %></td>
    <td><%=fact1 %></td>
    
  </tr>
  
  
</table>


</body>
</html>