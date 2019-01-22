import React from "react";
import { BrowserRouter as Router, Link, Route } from 'react-router-dom';
import TeamInformation from "../component/teamInformation.js";
import FootballScores from "./FootballScores.js";
import headerLogo from "../assets/database.svg";


import { library } from '@fortawesome/fontawesome-svg-core'
import { FontAwesomeIcon } from '@fortawesome/react-fontawesome'
import { faIgloo, faFootballBall, faHome, faBaseballBall, faBasketballBall, faHockeyPuck } from '@fortawesome/free-solid-svg-icons'

library.add(faIgloo);



library.add(faFootballBall);   
library.add(faHome);
library.add(faBaseballBall);
library.add(faBasketballBall);
library.add(faHockeyPuck);









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


//<div style={{display: 'flex',  justifyContent:'center', alignItems:'center'}} className="headerButtons">
//</div>


<div>
<Router>





<div className="HeaderContainer">
    <br className="SpaceAboveTitle"></br>
    <img  src={headerLogo}  alt="headerLogo" className="headerLogo"/>

    <h1 className="HeaderTitle">Sports Monitor</h1>
    
</div>
<div className="SpaceBelowTitle"></div>



<div className="LinkContainer">

    <Link to="/home" title="/home" className="headerLinks">
    <FontAwesomeIcon icon="home" color="white" size="1x" className="headerIconAlign">
    </FontAwesomeIcon>&nbsp;Home</Link>    
    
    <Link to="/football"className="headerLinks">
    <FontAwesomeIcon icon="football-ball" color="white" size="1x" className="headerIconAlign"/>
    &nbsp;Football</Link>

    <Link to="/baseball"className="headerLinks">
    <FontAwesomeIcon icon="baseball-ball" color="white" size="1x" className="headerIconAlign"/>
    &nbsp;Baseball</Link>

    <Link to="/basketball"className="headerLinks">
    <FontAwesomeIcon icon="basketball-ball" color="white" size="1x" className="headerIconAlign"/>
    &nbsp;Basketball</Link>
    
    <Link to="/hockey"className="headerLinks">
    <FontAwesomeIcon icon="hockey-puck" color="white" size="1x" className="headerIconAlign"/>
    &nbsp;Hockey</Link>

    
    
</div>  
<div className="SpaceBelowLinks"></div>  






<Route exact={true} path="/football" render={() => (
<FootballScores></FootballScores>
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