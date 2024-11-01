<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<html>
<head>
    <title>Квест-игра</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <link href="css/Paras.css" rel="stylesheet">
</head>
<body>
<br>
<p class="padding">
    Представляю тебе начало текстового квеста в мире фэнтези! <br>
    Ты – молодой искатель приключений по имени Эйден (или выбери другое имя), <br>
    который отправился на поиски древнего артефакта, способного исполнить любое желание.<br>
</p>
<h2 class="padding">Введение</h2>
<p class="padding">
    Ты стоишь у ворот заброшенного замка, скрытого в густом тумане.<br>
    Легенды гласят, что внутри замка хранится Камень Желаний, однако за ним охотятся и тёмные силы.<br>
    У тебя есть карта, немного еды, старинный кинжал и амулет удачи. <br>
    Но туман сгущается, и время для выбора действия настало.<br>
</p>
<div id="hidden_block" class="padding" style="display: none">
    <form action="start" method="post">
        <label for="name">Ваше имя</label>
        <input type="text" name="name" id="name">
        <input type="submit" value="Отправить">
    </form>
</div>
<% String name = (String) session.getAttribute("name");
if (name == null){ %>
<button id="startBut" type="button" class="btn btn-primary" onclick="showName()">Начать</button>
<% } %>
<%if (name != null) { %>
<div id="first-question">
<jsp:include page = "/WEB-INF/jsp/first.jsp"/>
</div>
<% } %>
<div id="second_question"></div>
<div id="third_question"></div>
<div id="fourth_question"></div>

<script>
    function showName() {
        hideBlock('startBut');
        document.getElementById("hidden_block").style.display = 'block';
    }
    function hideBlock(block, choice){
        document.getElementById(block).style.display='none';
        switch (choice) {
            case 1:
                jspFetch('jsp/second_1.jsp', 'second_question');
                break;
            case 2:
                jspFetch('jsp/second_2.jsp', 'second_question');
                break;
            case 3:
                jspFetch('jsp/second_3.jsp', 'second_question');
                break;
        }
    }
    function custom(filename, id, block){
        jspFetch(filename, id);
        hideBlock(block);
    }
    function jspFetch(filename, id){
        fetch(filename)
            .then(response => response.text())
            .then(html => document.getElementById(id).innerHTML=html)
            .catch(error => console.error("Ошибка загрузки HTML", error));
    }
    function escapeHTML(text) {
        return text.replace(/&/g, "&amp;")
            .replace(/</g, "&lt;")
            .replace(/>/g, "&gt;")
            .replace(/"/g, "&quot;")
            .replace(/'/g, "&#039;");
    }
</script>

</body>
<footer style="padding-top: 25px;">
    <div id="naming">
        <p>Ваше имя <%= request.getSession().getAttribute("name") %> <br>
            Кол-во сыгранных игр: <%= request.getSession().getAttribute("count") %></p>
    </div>
</footer>
</html>
