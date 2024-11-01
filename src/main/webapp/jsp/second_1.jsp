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
    <title></title>
</head>
<body>
<p class="padding">
    Ты подходишь к воротам и твой амулет начинает вибрировать<br>
    Ворота неожиданно открываются и перед твоим взором возникает <br>
    огромный замок. "Почему я не видел его размеры снаружи?",-думаешь ты <br>
    Внезапно тебя затягивает внутрь и ты оказываешься посреди огромного зала<br>
    с троном.<br>
</p>
<div id="2-1">
<p>
    Что же делать дальше? <br>
    1) Попытаться найти выход <br>
    2) Сесть на трон <br>
    3) Разбить окно и выпрыгнуть <br>
</p>
<div class="col-3">
    <button type="button" class="btn btn-primary col-2" onclick="custom('jsp/third_11.jsp', 'third_question', '2-1')">1</button>
    <button type="button" class="btn btn-primary col-2" onclick="custom('jsp/third_21.jsp', 'third_question', '2-1')">2</button>
    <button type="button" class="btn btn-primary col-2" onclick="custom('jsp/third_31.jsp', 'third_question', '2-1')">3</button>
</div>
</div>
</body>
</html>
