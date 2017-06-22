<!doctype html>
<html>
<head>

</head>
<body>
<g:if test="${list != null || !list.isEmpty()}">
<table>
    <tr>
        <td>ID</td>
        <td>Name</td>
        <td>Author</td>
        <td>Category</td>
    </tr>
    <g:each in="${list}" var="c">
        <tr>
            <td>${c.id}</td>
            <td>${c.name}</td>
            <td>${c.author}</td>
            <td>${c.category}</td>
        </tr>
    </g:each>
</table>
</g:if>
<g:else>
    Found Nothing <br>
</g:else>
<g:link controller="book" action="index">Back</g:link>
</body>
</html>
