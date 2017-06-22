<!doctype html>
<html>
<head>

</head>
<body>
<table>
    <tr>
        <td>ID</td>
        <td>Name</td>
        <td>Author</td>
        <td>Category</td>
        <td>IsLent</td>
    </tr>
    <g:each in="${list}" var="c">
        <tr>
            <td>${c.id}</td>
            <td>${c.name}</td>
            <td>${c.author}</td>
            <td>${c.category}</td>
            <td>${c.lent}</td>
        </tr>
    </g:each>
</table>
<g:link controller="book" action="create">Add new book</g:link>
<g:link controller="book" action="search">Search</g:link>

</body>
</html>
