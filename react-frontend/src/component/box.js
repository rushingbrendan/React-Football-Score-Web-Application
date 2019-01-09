import React from "react";
//import { BrowserRouter as Router, Link, Route } from 'react-router-dom';
import { BrowserRouter as Router, Link, Route } from 'react-router-dom';

class Box extends React.Component{

    constructor(props) {
        super(props);
        this.state = {
            currentSeason: "2018-2017",
            currentWeek: "1",
        };
    }

    /* Triggered when season select menu is changed */
    handleSelectChange = (event) => {
        this.setState({
          currentSeason: event.target.value
        })
      }

      /* Triggered when week button is clicked  */
      handleWeekChange = (event) => {
        this.setState({
          currentWeek: event.target.id
        })

        this.props.handleClick(this.state.currentSeason, this.state.currentWeek);
      }


    
render(){

const dataArray = Array.from(this.props.data);
const currentButton = this.props.buttonNumber;



return (




<div>
<Router>





<div style={{display: 'flex',  justifyContent:'center', alignItems:'center'}} className="headerButtons">

<Link to="/home"><button title="/home" >Home</button></Link>

<Link to="/teams"><button to="/teams">Teams</button></Link>
<Link to="/scores"><button to="/scores">Scores</button></Link>

</div>

<Route exact={true} path="/scores" render={() => (
<div>
<div style={{display: 'flex',  justifyContent:'center', alignItems:'center'}}>
    <h2>Week: {this.state.currentWeek}</h2>
</div>
<div style={{display: 'flex',  justifyContent:'center', alignItems:'center'}}>
    <h2>Season: {this.state.currentSeason}</h2>
</div>
<div style={{display: 'flex',  justifyContent:'center', alignItems:'center'}}>
<select name="season" onChange={this.handleSelectChange}>
<option value="2019-2018" >2019-2018</option>
<option value="2018-2017">2018-2017</option>
<option value="2017-2016">2017-2016</option>
<option value="2016-2015">2016-2015</option>
<option value="2015-2014">2015-2014</option>
<option value="2014-2013">2014-2013</option>
<option value="2013-2012">2013-2012</option>
<option value="2012-2011">2012-2011</option>
<option value="2011-2010">2011-2010</option>
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
    </table>
</div> 
)}

</div>
)} />




<Route exact={true} path="/teams" render={() => (
<div>




                    

</div>
)} />

</Router>
</div>
)
        
}



}

const scores = ({ match }) => (
    <div>
      <h1>WELCOME TO BLOG</h1>
    </div>
  )

export default Box;