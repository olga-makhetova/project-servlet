<%@ page contentType="text/html;charset=UTF-8" language="java" %>


<html lang="">
<head>
    <title>Tic-Tac-Toe</title>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <link href="static/main.css" rel="stylesheet">
</head>
<body>
<h1>Tic-Tac-Toe</h1>


<script>

</script>

<a href = "/tic-tac-toe/start"> Новая игра </a>

<c:set var="size" value="3"/>

<table id="board">
	<c:forEach begin="0" end="${size - 1}" var="row">
		<tr>
			<c:forEach begin="0" end="${size - 1}" var="col">
				<c:set var="i" value="${row * size + col}"/>
				<td data-cell="${i}">${data.get(i).sign}</td>
			</c:forEach>
		</tr>
	</c:forEach>
</table>

<script>
	document.addEventListener('DOMContentLoaded', () => {
		document.getElementById('board').addEventListener('click', (e) => {
			const cell = e.target.closest('td');
			if (cell) {
				window.location = '/tic-tac-toe/logic?click='+ cell.dataset.cell;
			}
		});
	});
</script>

</body>
</html>