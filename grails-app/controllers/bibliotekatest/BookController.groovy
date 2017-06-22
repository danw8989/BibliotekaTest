package bibliotekatest

import grails.gorm.transactions.Transactional

class BookController {

    def cList = ["", "SF", "Action", "Poetry"]

    def index() {
        def list = Book.getAll()
        [ list:list ]
    }
    @Transactional
    def save() {
        Random r = new Random(1)
        Boolean b = r.nextBoolean()
        def person = new Book(name: params.name,author: params.author, category: params.category,lent: b)
        person.save()
        redirect index()
    }

    def create() {
        [cList:cList]
    }

    def search(){
        [cList:cList]
    }

    //strasznie brzydko zaimplementowane ale nie znalazłem odpowiedniej funkcji w grails która by działałą (moze plugin)
    def showSearch() {
        def categorySearchList = Book.findAllByCategory(params.category)
        def authorSearchList = Book.findAllByAuthor(params.author)
        def nameSearchList = Book.findAllByName(params.name)

        def tmp
        def resultList

        if (params.category != "" && params.author != "" && params.name == "" )
            resultList = categorySearchList.intersect(authorSearchList)
        else if (params.category != "" && params.author == "" && params.name != "" )
            resultList = categorySearchList.intersect(nameSearchList)
        else if (params.category != "" && params.author == "" && params.name == "" )
            resultList = categorySearchList;
        else if (params.category == "" && params.author == "" && params.name != "" )
            resultList = nameSearchList
        else if (params.category == "" && params.author != "" && params.name == "" )
            resultList = authorSearchList
        else if (params.category == "" && params.author != "" && params.name != "" )
            resultList = nameSearchList.intersect(authorSearchList)
        else
        {
            tmp = categorySearchList.intersect(authorSearchList)
            resultList = tmp.intersect(nameSearchList)
        }

        [list: resultList]
    }
}
