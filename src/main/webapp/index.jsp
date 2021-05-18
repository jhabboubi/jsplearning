<%@ page language="java" contentType="text/html; charset=US-ASCII"
    pageEncoding="US-ASCII"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "https://www.w3.org/TR/html4/loose.dtd">

<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>JSP</title>
</head>
<body>
<%-- Declaration --%>
<%! int counter = 0;
        void incrementCounter(){
            counter++;
        }
 %>

<p>This is a JSP page </p>
<!-- i can see you -->
<%-- Scriptlets --%>
<%
    String example = "5 + 20 = ";
    out.print(example);
    int i = 5;
    int j = 20;
    int sum = i+j;
    out.print(sum);
%>

<h1>You have seen some java code above</h1>
<%= new java.util.Date() %>

<p>
This page has been visited
<%
    incrementCounter();

 %>

<%-- Expressions --%>
 <%= counter %>
</p>

<%
    application.setAttribute("visitors",counter);

%>

</body>
</html>