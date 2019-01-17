import React from "react";
import { BrowserRouter as Router, Link, Route } from 'react-router-dom';

class TeamInformation extends React.Component{


constructor(props) {
    super(props);
    this.state = {
        selectedTeam: "none",
        teams: []            
    };
}

componentDidMount(){
    fetch('/users/teamNames')
    .then(res => res.json())
    .then(teamNames => this.setState({teams: teamNames.teamData})); // teamData is an array, not teamNames
}

/* Triggered when season select menu is changed */
handleButtonClick = (event) => {
    
}

render(){

return (
<div>
    <h1>Teams</h1>

    <button onClick={this.handleButtonClick}>Click me</button>

{this.state.teams.map(team=>
    <div key={team.PK_TeamID}>
        <p>{team.cityName}</p>
    </div>
)}
</div>
)}}

export default TeamInformation;