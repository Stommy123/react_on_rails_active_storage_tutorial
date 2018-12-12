import React from 'react'

const ShowThingWithReactForm = props => {
  return(
    <div>
      <p>
        <strong>Name:</strong>
        {props.name}
      </p>
      <p>
        <strong>Image:</strong>
        <br></br>
        <img src={props.image} />
      </p>
    </div>
  )
}

export default ShowThingWithReactForm
