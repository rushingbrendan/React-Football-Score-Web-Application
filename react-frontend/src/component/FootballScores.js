import React from "react";
import { BrowserRouter as Router, Link, Route } from 'react-router-dom';

class FootballScores extends React.Component{


constructor(props) {

    
    super(props);
    this.state = {
        selectedWeek: 1,
        selectedSeason: 2015,
        scoreData:[ [] ],
        teams: [],
        teamNames:[]     
    };
}

componentDidMount(){
    //fetch('/users/2015/1')
    //.then(res => res.json())
    //.then(dataArray => this.setState({scoreData: dataArray.data})); // teamData is an array, not teamNames

    fetch('/users/teamNames')
    .then(res => res.json())
    .then(teamNames => this.setState({teams: teamNames.teamData})); // teamData is an array, not teamNames
    
}

/* Triggered when season select menu is changed */
handleButtonClick = (event) => {
    
}



render(){

    const teamNamesArray = ["Buffalo",
    "New York (G)",    
    "New York (J)",    
    "Cincinnati",
    "Cleveland",
    "Pittsburgh",
    "New England",
    "Miami",
    "Jacksonville",
    "Los Angeles (R)",
    "Los Angeles (C)",
    "Seattle",
    "Washington",
    "Philadelphia",
    "New Orleans",
    "Dallas",
    "Houston",
    "Denver",
    "Kansas City",
    "Minnesota",
    "Oakland",
    "Baltimore",
    "Tampa Bay",
    "Atlanta",
    "Indiannaoplis",
    "Green Bay",
    "San Francisco",
    "Detroit",
    "Chicago",
    "Carolina",
    "Tennessee",
    "Arizona",
    "National Football Conference",    
    "American Football Conference"];


    

return (
<div className="footballScoresContainer">
    <h1 className="sportsScoreTitle">Football Scores</h1>
    <hr></hr>
    <h3 className="sportsScoreTitle">Season: {this.state.selectedSeason}  &nbsp;Week: {this.state.selectedWeek}</h3>


    <button onClick={this.handleButtonClick}>Click me</button>

    {this.state.scoreData[0].map(currentScoreData=>
        <div>
            <p>{currentScoreData.PK_GameID}</p>
            <p>{currentScoreData.homeTeamPoints}</p>
            <p>{currentScoreData.awayTeamPoints}</p>
            <p>{currentScoreData.gameDate}</p>
            <p>{currentScoreData.FK_AwayTeamID}</p>
            <p>{currentScoreData.FK_HomeTeamID}</p>
        </div>
    )}


<div className="spaceUnderTeamData"></div>
    <h1 className="sportsScoreTitle">Teams</h1>
    <hr></hr>

    {this.state.teams.map(team=>    
        
        <div  key={team.PK_TeamID} className="teamNamesContainer">
            <p>{team.cityName}</p>
        </div>
    )}



</div>
)}}

export default FootballScores;