<div>
<div style={{display: 'flex',  justifyContent:'center', alignItems:'center'}}>
    <h2>Week: {this.state.currentWeek}</h2>
</div>
<div style={{display: 'flex',  justifyContent:'center', alignItems:'center'}}>
    <h2>Season: {this.state.currentSeason}</h2>
</div>
<div style={{display: 'flex',  justifyContent:'center', alignItems:'center'}}>
<select name="season" onChange={this.handleSelectChange}>
<option value="2019" >2019</option>
<option value="2018">2018</option>
<option value="2017">2017</option>
<option value="2016">2016</option>
<option value="2015">2015</option>
<option value="2014">2014</option>
<option value="2013">2013</option>
<option value="2012">2012</option>
<option value="2011">2011</option>
</select>
</div>

<div style={{display: 'flex',  justifyContent:'center', alignItems:'center'}} className="weekButtonGroup">
    <button id="1"onClick={this.handleWeekChange}> 1</button>
    <button id="2"onClick={this.handleWeekChange}> 2</button>
    <button id="3"onClick={this.handleWeekChange}> 3</button>
    <button id="4"onClick={this.handleWeekChange}> 4</button>
    <button id="5"onClick={this.handleWeekChange}> 5</button>
    <button id="6"onClick={this.handleWeekChange}> 6</button>
    <button id="7"onClick={this.handleWeekChange}> 7</button>
    <button id="8"onClick={this.handleWeekChange}> 8</button>
    <button id="9"onClick={this.handleWeekChange}> 9</button>
    <button id="10"onClick={this.handleWeekChange}> 10</button>
    <button id="11"onClick={this.handleWeekChange}> 11</button>
    <button id="12"onClick={this.handleWeekChange}> 12</button>
    <button id="13"onClick={this.handleWeekChange}> 13</button>
    <button id="14"onClick={this.handleWeekChange}> 14</button>
    <button id="15"onClick={this.handleWeekChange}> 15</button>
    <button id="16"onClick={this.handleWeekChange}> 16</button>
    <button id="17"onClick={this.handleWeekChange}> 17</button>
</div>

{dataArray.map(dataResult =>            
<div  className='sportsScoreDiv'>
    <table border="0" width="90%" align="center">
    <tbody>
        <tr>    
        <td align="left"><p className='teamName'>{dataResult.awayTeamName} {dataResult.awayTeamSpread}</p></td>    
        <td align="right"><p className='teamName'>{dataResult.awayTeamScore}</p></td>    
        <td align="right"><p className='teamName'>Final</p></td>                  
        </tr>
        <tr>  
        <td align="left"><p className='teamName'>{dataResult.homeTeamName}</p></td> 
        <td align="right"><p className='teamName'>{dataResult.homeTeamScore}</p></td>    
        <td align="right"><p className='teamName'></p></td>                      
        </tr> 
    </tbody>
    </table>
</div> 
)}

</div>




{this.state.teams.map(team=>
    <div key={team.PK_TeamID}>
        <p>{team.cityName}</p>
    </div>
)}


componentDidMount(){
    fetch('/users/2015/1')
    .then(res => res.json())
    .then(teamNames => this.setState({teams: teamNames.teamData})); // teamData is an array, not teamNames
}





{this.state.scoreData[0][0].map(currentScoreData=>
    <div >
        <p>{currentScoreData.PK_GameID}</p>
        <p>{currentScoreData.homeTeamPoints}</p>
        <p>{currentScoreData.awayTeamPoints}</p>
        <p>{currentScoreData.gameDate}</p>
        <p>{currentScoreData.FK_AwayTeamID}</p>
        <p>{currentScoreData.FK_HomeTeamID}</p>
    </div>
    )}