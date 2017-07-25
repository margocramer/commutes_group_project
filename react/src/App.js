import React from 'react';
import { Router, Route, IndexRoute, browserHistory } from 'react-router';
import CommuteIndexContainer from './containers/CommuteIndexContainer';
import CommuteShowContainer from './containers/CommuteShowContainer';

class App extends React.Component {
  constructor(props){
    super(props)
    this.state = {

    }
  }

  render() {
    return(
      <Router history={browserHistory}>

          <Route path="/" component={CommuteIndexContainer} />
          <Route path="commutes/:id" component={CommuteShowContainer} />
      </Router>

    );
  };
};

export default App;
