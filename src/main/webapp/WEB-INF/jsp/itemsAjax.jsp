<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="com.freeze.dao.BoardDaoImpl" %>
<%@ page import="java.util.*" %>
<%@ page import="java.util.List"%>
<%@ page import="java.util.Map "%>
<%@ page import="java.util.HashMap "%>
<%@ page import="java.util.ArrayList "%>
<%@ page import="org.json.simple.JSONArray "%>
<%@ page import="org.json.simple.JSONObject "%>

<%
	request.setCharacterEncoding("utf-8");
	String clickItemId = request.getParameter("clickItemId");
	ArrayList<HashMap<String,Object>> list = new ArrayList<HashMap<String,Object>>();
	JSONArray jsonList = new JSONArray();
	BoardDaoImpl actionDAO = new BoardDaoImpl();
%>
<%= jsonList %>

