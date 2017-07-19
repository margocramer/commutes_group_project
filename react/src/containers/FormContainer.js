import React, { Component } from 'react';
import Textfield from '../components/TextField';

class FormContainer extends Component {
  constructor(props) {
    super(props);
    this.state = {
      errors: {},
      startLocation: '',
      endLocation: '',
      description: '',
      mode: '',
      rating: ''
    }
    this.handleFormSubmit = this.handleFormSubmit.bind(this)
    this.handleStartLocationChange = this.handleStartLocationChange.bind(this)
    this.handleEndLocationChange = this.handleEndLocationChange.bind(this)
    this.handleDescriptionChange = this.handleDescriptionChange.bind(this)
    this.handleModeChange = this.handleModeChange.bind(this)
    this.handleRatingChange = this.handleRatingChange.bind(this)
    this.handleClearForm = this.handleClearForm.bind(this)
  }

  handleFormSubmit(event){
    event.preventDefault();

  }

  handleClearForm(event){
    event.preventDefault();
  }

  handleStartLocationChange(event){
    this.setState({startLocation: event.target.value})
  }

  handleEndLocationChange(event){
    this.setState({endLocation: event.target.value})
  }

  handleDescriptionChange(event){
    this.setState({description: event.target.value})
  }

  handleModeChange(event){
    this.setState({mode: event.target.value})
  }

  handleRatingChange(event){
    this.setState({rating: event.target.value})
  }

    render(){
      return(
        <div>
          <form onSubmit={this.handleFormSubmit}>
            <Textfield
              content = {this.state.startLocation}
              label = 'Start Location'
              name = 'Start Location'
              handlerFunction={this.handleStartLocationChange}
            />
            <div>
              <button onClick={this.handleClearForm}>Clear</button>
              <input type='submit' value='Submit' />
            </div>
          </form>
        </div>
      )
    }
  }

export default FormContainer;
