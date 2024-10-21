<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/reset.css">
<title>Chat</title>
<style>
header {
  background-color: yellow;
  position: fixed;
  width: 100%;
  display: flex;
  justify-content: space-between;
  height: 100px;
  align-items: center;
  z-index: 1000;
}

header a {
  font-size: 2.3rem;
  font-weight: bold;
  margin-left: 50px;
}

header > * {
  width: 50%;
  display: flex;
}

header form {
  justify-content: center;
}
</style>
</head>
<body>
<header>
<a href="/index">PetWorld</a>
</header>

</body>
</html>