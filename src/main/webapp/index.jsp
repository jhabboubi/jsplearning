<%@ page language="java" contentType="text/html; charset=US-ASCII" pageEncoding="US-ASCII" %>
    <%@ page errorPage="error.jsp" %>
    <%@ page import="java.util.*" %>
    <%@ page import="java.io.*" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "https://www.w3.org/TR/html4/loose.dtd">

<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>JSP</title>
</head>
<body>

<jsp:include page="header.jsp" />
<%@ include file="header.jsp" %>


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
    String example = "5 / 0 = ";
    out.print(example);
    double i = 5;
    double j = 0;
    if(j==0){
    throw new Exception("Exception!");
    }
    double sum = i/j;
    out.print(sum);
%>

<h1>You have seen some java code above</h1>
<jsp:useBean id = "bmw" class="org.perschoals.Car" scope="session" />
<%= new Date() %>
<jsp:setProperty name="bmw" property="name" value="bmw car" />
<jsp:getProperty name="bmw" property="name" />

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