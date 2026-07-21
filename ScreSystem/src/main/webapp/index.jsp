<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ page import="java.util.ArrayList" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>得点管理システム</title>
<style>

body{
    font-family: sans-serif;
}

table{
    border-collapse: collapse;
    width: 300px;
}

th, td{
    padding: 10px;
    text-align: center;
}

th{
    background-color: lightblue;
}
h1{
    color: blue;
}

body{
    margin: 30px;
}

</style>

</head>

<body>

<h1>得点管理システム</h1>

<form>

<%
java.util.ArrayList<Student> list = new java.util.ArrayList<>();

list.add(new Student("田中", 80));
list.add(new Student("佐藤", 92));
list.add(new Student("鈴木", 70));
%>

名前：
<input type="text" name="name">

<br><br>

点数：
<input type="number" name="score">

<br><br>

<input type="submit" value="登録">

</form>

<%
String name = request.getParameter("name");
String score = request.getParameter("score");

if(name != null && score != null){
%>

<h2>入力結果</h2>

<table border="1">

<tr>
    <th>名前</th>
    <th>点数</th>
</tr>

<tr>
    <td><%= name %></td>
    <td><%= score %></td>
</tr>

<%
for(Student s : list){
%>

<tr>
    <td><%= s.name %></td>
    <td><%= s.score %></td>
</tr>

<%
}
%>

</table>

<%
int s = Integer.parseInt(score);

if(s >= 60){
%>

合格

<%
}else{
%>

不合格

<%
}
%>

<%
int total = Integer.parseInt(score) + 92 + 70 + 85;
double average = total / 4.0;
%>

<h3>平均点：<%= average %>点</h3>

<%
}
%>

</body>
</html>