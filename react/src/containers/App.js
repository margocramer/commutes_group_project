import React, { Component } from 'react';
import FormContainer from './FormContainer';

class App extends Component {
  constructor(props){
    super(props);
    this.state = {
      commutes: []
    }
  }

  componentDidMount() {
    fetch('/api/v1/commutes')
    .then(response => response.json())
    .then(json => this.setState({ commutes: json.commutes }))
  }

  render(){
    return(
      <div>
        <FormContainer
        />
      </div>
    )
  }
}

export default App;
