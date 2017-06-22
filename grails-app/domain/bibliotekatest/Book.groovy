package bibliotekatest

class Book {
    String name;
    String author;
    String category;
    Boolean lent;
    static constraints = {
        lent: defaultValue: false
    }
}
