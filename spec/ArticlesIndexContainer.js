import React, { Component } from 'react';
import ArticleTile from '../components/ArticleTile';
import ArticleFormContainer from '../containers/ArticleFormContainer';

class ArticlesIndexContainer extends Component {
  constructor(props) {
    super(props);
    this.state = {
      articles: []
    }
    this.addNewArticle = this.addNewArticle.bind(this)
  }

  componentDidMount() {
    // FETCH ALL ARTICLES
    fetch('/api/v1/articles')
    .then(response => response.json())
    .then(json => this.setState({ articles: json }))
  }

  addNewArticle(newArticle) {
    let submitArticle = this.state.articles.concat(newArticle)
    this.setState({ articles: submitArticle })
  }

  addNewArticle(formPayload) {
    fetch('/api/v1/articles', {
      method: 'POST',
      body: JSON.stringify(formPayload)
    })
    .then(response => response.json())
    .then(body => {
      this.setState({ articles: [...this.state.articles, body] })
    })
  }

  render() {
    let addNewArticle = (formPayload) => this.addNewArticle(formPayload)

    let articles = this.state.articles.map(article => {
      return(
        <ArticleTile
          key={article.id}
          id={article.id}
          title={article.title}
          body={article.body}
        />
      )
    })

    return(
      <div className="row">
        <div className="small-8 small-centered columns">
          <h1>My Blog!</h1>
          <hr/>
          {articles}
          <ArticleFormContainer addNewArticle={this.addNewArticle} />
        </div>
      </div>
    )
  }
}

export default ArticlesIndexContainer;
