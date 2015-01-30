<%@ page import="java.util.*, unl.cse.music.Album, unl.cse.music.Band" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<jsp:useBean id="myBand" class="unl.cse.music.BandBean" scope="session" />

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Band Detail</title>
</head>
<body>

<% 
  int bandId = -1;
  try {
	  bandId = Integer.parseInt(request.getParameter("bandId"));
  } catch(Exception e) {
	  bandId = -1;
  }
  Band b = myBand.getBand(bandId);
%>
<h1><%=b.getName()%></h1>

<ul>
  <%for(String member : b.getMembers()) {%>
    <li><%=member%></li>
  <%}%>
</ul>

</body>
</html>