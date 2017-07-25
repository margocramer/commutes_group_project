import React, { Component }  from 'react';

class CommuteShowContainer extends Component {
  constructor(props) {
    super(props);
    this.state = {
      commutes: {}
    }
  }

  componentDidMount() {
    let commuteId = this.props.params.id;
    fetch(`/api/v1/commutes/${commuteId}`)
      .then((response) => response.json())
      .then((responseData) => {
        this.setState({commutes: responseData})
      })
  }

  render() {
    // debugger;
    return(
      <div>
        This commute started at: {this.state.commutes.starting_location} and ended at: {this.state.commutes.ending_location}
         <br />
        Mode of transportation was: {this.state.commutes.mode}
        <br />
        The poster had this to say:
        {this.state.commutes.description}
      </div>
    )
  }
}

export default CommuteShowContainer;
