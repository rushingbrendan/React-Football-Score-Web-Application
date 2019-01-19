import React from "react";
import { BrowserRouter as Router, Link, Route } from 'react-router-dom';
import TeamInformation from "../component/teamInformation.js";
import ScoreData from "../component/scoreData.js";
import headerLogo from "../assets/database.svg";


import { library } from '@fortawesome/fontawesome-svg-core'
import { FontAwesomeIcon } from '@fortawesome/react-fontawesome'
import { faIgloo, faFootballBall, faHome } from '@fortawesome/free-solid-svg-icons'

library.add(faIgloo);



library.add(faFootballBall);   
library.add(faHome);








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

<FontAwesomeIcon icon="home" color="white" size="2x" className="headerIconAlign"></FontAwesomeIcon>
    <Link to="/home" title="/home" className="headerLinks">Home</Link>    
    
    
    <FontAwesomeIcon icon="football-ball" color="white" size="2x" />
    <Link to="/Football" to="/football"className="headerLinks">Football</Link>
    
</div>  
<div className="SpaceBelowTitle"></div>  


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