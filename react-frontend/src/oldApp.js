import React, { Component } from 'react';
import logo from './logo.svg';
import './App.css';
import { Button,Nav,Navbar, NavItem,NavDropdown, MenuItem, PageHeader,Jumbotron, 
  SplitButton, ButtonToolbar, ButtonGroup,Dropdown, DropdownButton } from 'react-bootstrap';



class App extends Component {
  state = {users: []}

  componentDidMount(){
    fetch('/users')
    .then(res => res.json())
    .then(users => this.setState({users}));
  }




  render() {
    return (
      <div className="App">

<Router>
  
  <PageHeader>
    Canada Sports Monitor <small></small>
  </PageHeader>

  <Nav bsStyle="tabs" activeKey="1" >
    <NavItem eventKey="1" href="/home" title="/home">
      Home
    </NavItem>
    <NavItem eventKey="2" href="/NFLScoreBoard"  title="/NFLScoreBoard">
      NFL Score Board
    </NavItem>
    <NavItem eventKey="3" href="/NFLtrendReport" title="/NFLtrendReport">
      NFL Weekly Trend Report
    </NavItem>
    <NavItem eventKey="4" href="/FAQ" title="/FAQ">
      FAQ
    </NavItem>
  </Nav>



  <Jumbotron>
    <h1>NFL Score Board</h1>

  </Jumbotron>

  <h1>
    Season &nbsp;
    <SplitButton title="2017-2018">
        <MenuItem eventKey="1">2016-2017</MenuItem>
        <MenuItem eventKey="2">2015-2016</MenuItem>
        <MenuItem eventKey="3">2014-2015</MenuItem>
        <MenuItem eventKey="4">2013-2014</MenuItem>
        <MenuItem eventKey="5">2012-2013</MenuItem>
        <MenuItem eventKey="6">2011-2012</MenuItem>
        <MenuItem eventKey="7">2010-2011</MenuItem>

      </SplitButton>
  </h1>
  <h1>
  <div style={{display: 'flex',  justifyContent:'center', alignItems:'center'}}>
  <ButtonToolbar>
    <ButtonGroup>
      <Button to="/week/1">1</Button>
      <Button>2</Button>
      <Button>3</Button>
      <Button>4</Button>
      <Button>5</Button>
      <Button>6</Button>
      <Button>7</Button>
      <Button>8</Button>
      <Button>9</Button>
      <Button>10</Button>
      <Button>11</Button>
      <Button>12</Button>
      <Button>13</Button>
      <Button>14</Button>
      <Button>15</Button>
      <Button>16</Button>
      <Button>17</Button>
    </ButtonGroup>
  </ButtonToolbar>
    </div>
  </h1>
    <div style={{display: 'flex',  justifyContent:'center', alignItems:'center'}}>

  <ButtonToolbar>
    <ButtonGroup>
      <Button >Wild Card</Button>
      <Button>Divisonal</Button>
      <Button>Confrence Championship</Button>
      <Button>Super Bowl</Button>
    </ButtonGroup>
  </ButtonToolbar>

  <Link to="/week/1">Week 1</Link>
    </div>


<br>
</br>


<br></br>
<div class='sportsScoreDiv'>
<table border="0" width="90%" align="center">
    <tr>    
      <td align="left"><p class='teamName'>Bye Week Teams</p>
      <hr></hr></td>    
    </tr>
    <tr>

    </tr>
    <tr>  
    <td align="left"><p class='teamName'>Oakland</p></td>                 
    </tr> 
    <tr>  
    <td align="left"><p class='teamName'>Dallas</p></td>                 
    </tr> 
    <tr>  
    <td align="left"><p class='teamName'>Miami</p></td>                 
    </tr> 
    <tr>  
    <td align="left"><p class='teamName'>Seattle</p></td>                 
    </tr> 
</table>
</div>
<br></br>


{this.state.users.map(user =>
<div key={user.id} class='sportsScoreDiv'>
<table border="0" width="90%" align="center">
    <tr>    
      <td align="left"><p class='teamName'>{user.awayTeamName} {user.awayTeamSpread}</p></td>    
      <td align="right"><p class='teamName'>{user.awayTeamScore}</p></td>    
      <td align="right"><p class='teamName'>Final</p></td>                  
    </tr>
    <tr>  
    <td align="left"><p class='teamName'>{user.homeTeamName}</p></td> 
    <td align="right"><p class='teamName'>{user.homeTeamScore}</p></td>    
    <td align="right"><p class='teamName'></p></td>                      
    </tr> 
</table>
</div>
)}

<Route path="/week/:weekId" component={WeekEvents}/>

<Route exact={true} path="/" component={Home} />


</Router>


</div>
    );
  }
}

const WeekEvents = ({ match }) => {
  // state = {currentUsers: []}



  return (


  <div>    
  <h1>Week {match.params.weekId}</h1>
  
</div>


  )
}


const Home = ({ match }) => (
  <div>
    <h1>WELCOME TO HOME</h1>
  </div>
)

export default App;
