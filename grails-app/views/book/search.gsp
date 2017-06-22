<!doctype html>
<html>
<head>

</head>
<body>
<g:form controller="book" action="search">
    <label>Name </label>
    <g:textField name="name"/><br/>
    <label>Author </label>
    <g:textField name="author"/><br/>
    <label>Category </label>
    <g:select name="category" from="${cList}"/>
    <g:actionSubmit value="showSearch"/>
</g:form>
</body>
</body>
</html>
