<%--
  Created by IntelliJ IDEA.
  User: Timur
  Date: 30.10.2024
  Time: 20:01
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<p class="padding">Ты можешь сделать следующее: <br>
    1) Подойти к главным воротам <br>
    2) Исследовать окрестности замка и поискать другой вход<br>
    3) Разбить лагерь на ночь и подготовиться <br>
</p>
    <div class="col-3">
    <button type="button" class="btn btn-primary col-2" onclick="hideBlock('first-question', 1)">1</button>
    <button type="button" class="btn btn-primary col-2" onclick="hideBlock('first-question', 2)">2</button>
    <button type="button" class="btn btn-primary col-2" onclick="hideBlock('first-question', 3)">3</button>
    </div>
<script>

</script>
</body>
</html>
