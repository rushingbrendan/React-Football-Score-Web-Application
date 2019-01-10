let defaultState={
    data:"default"
}

const mainReducer=(state=defaultState,action)=>{
    if(action.type==="CHANGE_SCOREDATA"){
        return {
            ...state,
            data: action.data
        }
    }
    else{
        return{
            ...state
        }
    }
}


export default mainReducer;