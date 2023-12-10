<%@ page contentType="text/html;charset=UTF-8" isELIgnored="false"%>
<html>
<head>
    <title>Home</title>
    <style>
        body, h1, h3, p {
            margin: 0;
            padding: 0;
        }

        body {
            font-family: Arial, sans-serif;
            background-color: #f0f0f0;
            color: #333;
            padding: 50px;
        }

        h1 {
            color: #0066cc;
            font-size: 36px;
        }
    </style>
</head>
<body>
    <h1>Hello! </h1>
    <br>
    <h3>현재 시각: [ ${serverTime} ]
        <br>최대한 빨리 정보 입력해 주세요 ❤️ </h3>
    <br>
    <p>
        <button class="button" onclick="location.href='board/list'">24-1학기 활동 희망 동아리 명단</button>
    </p>
</body>
</html>
