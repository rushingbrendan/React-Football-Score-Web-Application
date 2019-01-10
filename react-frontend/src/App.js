import React, { Component } from 'react';
import './App.css';
import { Button,Nav,Navbar, NavItem,NavDropdown, MenuItem, PageHeader,Jumbotron, 
  SplitButton, ButtonToolbar, ButtonGroup,Dropdown, DropdownButton } from 'react-bootstrap';

import { BrowserRouter as Router, Link, Route } from 'react-router-dom';
import BoxCon from './container/box-container.js';
import MainHeader from './container/mainHeader.js';
import {createStore, applyMiddleware} from 'redux';
import {Provider} from 'react-redux';
import thunk from 'redux-thunk';
import reducers from "./reducers/index.js";






class App extends Component {
  

  render() {
    return (
      <div>

      <BoxCon></BoxCon>
      </div>
    )
  }
}



export default App;
