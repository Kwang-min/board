<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page session="false"%>
<!DOCTYPE html> 
<html>
<head>
<title>글 읽기</title>
</head>

<form>
<body>
<p><label>글번호<input type="text" name="bno" value="${boardVO.bno}" readonly="readonly"> </label></p>

<p><label>제목<input type="text" name="title" style="background-color:#B0E0E6;" 
value="${boardVO.title}" readonly="readonly"></label></p>

<p><label>작성자<input type="text" name="writer" size="15" value="${boardVO.writer}" readonly="readonly"></label></p>

<label>내용 <br><textarea name=content rows ="10" cols="70"  style="background-color:#B0E0E6;"   
 readonly="readonly">${boardVO.content}</textarea></label><br>

<button type="submit" formaction="modify" formmethod="get">수정</button>

<button type="submit" formaction="remove" formmethod="post">삭제</button>

<button type="submit" formaction="listAll" formmethod="get">목록</button>

</body>
</form>
</html>