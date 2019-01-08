import axios from "axios";


export function loadScoreData(inputSeason, inputWeek){
    return (dispatch)=> {
        return axios.get("http://localhost:3001/users/"+inputSeason +"/" + inputWeek).then((response) => {

            //'http://localhost:8080/widgets'
            dispatch(changeScoreData(response.data))
            
        })
    }
}

export function changeScoreData(scoreData){
    return {
        type: "CHANGE_SCOREDATA",
        data:scoreData
    }
}