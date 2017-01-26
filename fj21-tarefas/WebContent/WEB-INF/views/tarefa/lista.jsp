<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Lista com Spring</title>
</head>
<body>
	<a href="novaTarefa">Criar nova tarefa</a>
	<br/><br/>
	<table>
		<tr>
			<th>Id</th>
			<th>Descricao</th>
			<th>Finalizado?</th>
			<th>Data de finalizacao</th>
		</tr>
		<c:forEach items="${tarefas}" var="tarefas">
			<tr>
				<td>${tarefas.id}</td>
				<td>${tarefas.descricao}</td>
				<c:if test="${tarefas.finalizado eq false}">
					<td>Nao finalizado</td>
				</c:if>
				<c:if test="${tarefas.finalizado eq true}">
					<td>Finalizado</td>
				</c:if>
				<td>
					<fmt:formatDate value="${tarefas.dataFinalizacao.time}" pattern="dd/MM/yyyy"/>
				</td>
				<td>
					<a href="mostraTarefa?id=${tarefas.id}">Alterar</a>
				</td>
				<td>
					<a href="removeTarefa?id=${tarefas.id}">Remover</a>
				</td>
			</tr>
		</c:forEach>
	</table>
</body>
</html>