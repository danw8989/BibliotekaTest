<!doctype html>
<html>
<head>

</head>
<body>
<g:form controller="book" action="save">
    <label>Name </label>
    <g:textField name="name"/><br/>
    <label>Author </label>
    <g:textField name="author"/><br/>
    <label>Category </label>
    <g:select name="category" from="${cList}"/>
    <g:actionSubmit value="Save"/>
</g:form>
</body>
</body>
</html>
