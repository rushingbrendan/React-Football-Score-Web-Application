import React from "react";
import { BrowserRouter as Router, Link, Route } from 'react-router-dom';

class ScoreData extends React.Component{


constructor(props) {
    super(props);
    this.state = {
        selectedWeek: 1,
        selectedSeason: 2015,
scoreData:[ [] ]          
    };
}

componentDidMount(){
    fetch('/users/2015/1')
    .then(res => res.json())
    .then(dataArray => this.setState({scoreData: dataArray.data})); // teamData is an array, not teamNames
    
}

/* Triggered when season select menu is changed */
handleButtonClick = (event) => {
    
}



render(){

    //const dataArray = Array.from(this.state.scoreData[0]);


return (
<div>
    <h1>NFL Score Data</h1>

    <button onClick={this.handleButtonClick}>Click me</button>

    {this.state.scoreData[0].map(currentScoreData=>
        <div >
            <p>{currentScoreData.PK_GameID}</p>
            <p>{currentScoreData.homeTeamPoints}</p>
            <p>{currentScoreData.awayTeamPoints}</p>
            <p>{currentScoreData.gameDate}</p>
            <p>{currentScoreData.FK_AwayTeamID}</p>
            <p>{currentScoreData.FK_HomeTeamID}</p>
        </div>
    )}



</div>
)}}

export default ScoreData;