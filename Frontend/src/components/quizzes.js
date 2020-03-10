class Quizzes {
    constructor() {
        this.quizzes = []
        this.adapter = new QuizzesAdapter()
        // this.bindEventListeners()
        this.fetchAndLoadQuizzes()
    }

    fetchAndLoadQuizzes() {
        this.adapter.getQuizzes().then(quizzes => {
            console.log(quizzes)
        })
    }
}