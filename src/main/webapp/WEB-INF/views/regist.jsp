<%@ page language="java" contentType="text/html; charset=UTF-8"

    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>

<head>
<title>글쓰기</title>
</head>
<form method = "post">
<body>
<p><label>제목<input type="text" name="title"></p></label>
<p><label>작성자<input type="text" name="writer"></p></label>
<label>내용<p><textarea rows="15" cols="65" name="content"></textarea></p></label>
<button type="submit">등록</button>
</body>
</form>
</html>