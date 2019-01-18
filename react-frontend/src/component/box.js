import React from "react";
import { BrowserRouter as Router, Link, Route } from 'react-router-dom';
import TeamInformation from "../component/teamInformation.js";
import ScoreData from "../component/scoreData.js";

class Box extends React.Component{

    constructor(props) {
        super(props);
        this.state = {
            currentSeason: "2016",
            currentWeek: "50",
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
<ScoreData></ScoreData>
)} />




<Route exact={true} path="/teams" render={() => (
<div>
<TeamInformation>    
</TeamInformation> 
</div>
)} />

</Router>
</div>
)
        
}



}


export default Box;