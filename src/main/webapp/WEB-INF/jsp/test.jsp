<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>DB Connection Test</title>
</head>
<body>
<%
    java.sql.Connection conn = null;
    try {
        Class.forName("oracle.jdbc.driver.OracleDriver");
        conn = java.sql.DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "system", "pass");
        out.println("DB 연결 성공!");
    } catch (Exception e) {
        out.println("DB 연결 실패: " + e.getMessage());
    } finally {
        if (conn != null) try { conn.close(); } catch (Exception ignored) {}
    }
%>
</body>
</html>
