import 'babel-polyfill';
import React from 'react';
import ReactDOM from 'react-dom';
import App from './containers/App';

debugger;

document.addEventListener('DOMContentLoaded', () => {
  ReactDOM.render(
    <App />,
    document.getElementById('app')
  );
})
