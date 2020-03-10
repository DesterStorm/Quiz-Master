class QuizzesAdapter {
    constructor() {
        this.baseUrl = 'http://localhost:3000/api/v1/quizzes'
    }

    getQuizzes(){
        return fetch(this.baseUrl).then(res => res.json()
        )
    }
}